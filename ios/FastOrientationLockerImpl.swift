import Foundation
import UIKit

@objc public class FastOrientationLockerImpl: NSObject {

    private static var currentOrientationMask: UIInterfaceOrientationMask = .all

    // MARK: - Force Rotation
    private func forceRotation(to orientation: UIInterfaceOrientation) {
        DispatchQueue.main.async {
            let lockMask: UIInterfaceOrientationMask
            switch orientation {
            case .portrait:
                lockMask = .portrait
            case .landscapeLeft, .landscapeRight:
                lockMask = .landscape
            default:
                lockMask = .all
            }

            FastOrientationLockerImpl.currentOrientationMask = lockMask

            if #available(iOS 16.0, *) {
                guard let windowScene = UIApplication.shared.connectedScenes
                    .first(where: { $0.activationState == .foregroundActive }) as? UIWindowScene else { return }

                let geometryPreferences = UIWindowScene.GeometryPreferences.iOS(interfaceOrientations: lockMask)
                windowScene.requestGeometryUpdate(geometryPreferences) { error in
                    print("❌ Orientation update failed: \(error.localizedDescription)")
                }
            } else {
                UIDevice.current.setValue(orientation.rawValue, forKey: "orientation")
                UIViewController.attemptRotationToDeviceOrientation()
            }
        }
    }

    // MARK: - Public API
    @objc public func lockToLandscape() {
        forceRotation(to: .landscapeRight)
    }

    @objc public func lockToPortrait() {
        forceRotation(to: .portrait)
    }

    @objc public func unlockAllOrientations() {
        DispatchQueue.main.async {
            FastOrientationLockerImpl.currentOrientationMask = .all
            UIDevice.current.setValue(UIInterfaceOrientation.unknown.rawValue, forKey: "orientation")
            UIViewController.attemptRotationToDeviceOrientation()
        }
    }

    // MARK: - Helper for AppDelegate (optional)
    @objc public static func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return currentOrientationMask
    }
}

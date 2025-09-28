#import "FastOrientationLocker.h"
#import <UIKit/UIKit.h>
using namespace facebook;
using namespace facebook::react;
@implementation FastOrientationLocker
RCT_EXPORT_MODULE()
- (void)lockToLandscape {
  [self setOrientation:UIInterfaceOrientationLandscapeRight];
}

- (void)lockToPortrait {
  [self setOrientation:UIInterfaceOrientationPortrait];
}

- (void)unlockAllOrientations {
  // Cho phép xoay tự do → reset về portrait
  [self setOrientation:UIInterfaceOrientationUnknown];
}

- (void)setOrientation:(UIInterfaceOrientation)orientation {
  dispatch_async(dispatch_get_main_queue(), ^{
    if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
      NSNumber *value = [NSNumber numberWithInt:(int)orientation];
      [[UIDevice currentDevice] setValue:value forKey:@"orientation"];
      [UIViewController attemptRotationToDeviceOrientation];
    }
  });
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:
    (const facebook::react::ObjCTurboModule::InitParams &)params
{
    return std::make_shared<facebook::react::NativeFastOrientationLockerSpecJSI>(params);
}

@end

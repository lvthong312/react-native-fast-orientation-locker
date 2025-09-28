import FastOrientationLocker from './NativeFastOrientationLocker';

export function lockToLandscape(): void {
  return FastOrientationLocker.lockToLandscape();
}

export function lockToPortrait(): void {
  return FastOrientationLocker.lockToPortrait();
}

export function unlockAllOrientations(): void {
  return FastOrientationLocker.unlockAllOrientations();
}

#import "FastOrientationLocker.h"
#import "FastOrientationLocker-Swift.h"
@implementation FastOrientationLocker {
  FastOrientationLockerImpl *moduleImpl;
}
-(instancetype) init {
  self = [super init];
  if(self) {
    moduleImpl = [FastOrientationLockerImpl new];
  }
  return self;
}
RCT_EXPORT_MODULE()

- (void)lockToLandscape {
  return [moduleImpl lockToLandscape];
}

- (void)lockToPortrait {
  return [moduleImpl lockToPortrait];
}

- (void)unlockAllOrientations {
  return [moduleImpl unlockAllOrientations];
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:
    (const facebook::react::ObjCTurboModule::InitParams &)params
{
    return std::make_shared<facebook::react::NativeFastOrientationLockerSpecJSI>(params);
}

@end

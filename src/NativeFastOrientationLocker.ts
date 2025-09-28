import { TurboModuleRegistry, type TurboModule } from 'react-native';

export interface Spec extends TurboModule {
  lockToLandscape(): void;
  lockToPortrait(): void;
  unlockAllOrientations(): void;
}

export default TurboModuleRegistry.getEnforcing<Spec>('FastOrientationLocker');

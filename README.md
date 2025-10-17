# react-native-fast-orientation-locker
<p align="center">
  <img src="https://img.shields.io/npm/v/react-native-fast-orientation-locker?color=green" alt="npm version" />
  <img src="https://img.shields.io/npm/dm/react-native-fast-orientation-locker" alt="npm downloads" />
  <img src="https://img.shields.io/badge/react--native-0.70+-blue" alt="react-native" />
</p>


Support for orientation

## Installation


```sh
npm install react-native-fast-orientation-locker
```

## Goto your AppDelegate.swift and add FastOrientationLocker & application function

```swift
import FastOrientationLocker //<--- add this code
...
  //<--- add more this function --->
  func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
      return FastOrientationLockerImpl.supportedInterfaceOrientations()
  }

```


## Usage


```js
import {
  SafeAreaView,
  StyleSheet,
  Text,
  TouchableOpacity
} from 'react-native';
import {
  lockToLandscape,
  lockToPortrait,
  unlockAllOrientations,
} from 'react-native-fast-orientation-locker';

export default function App() {
  return (
    <SafeAreaView style={styles.container}>
      <TouchableOpacity
        onPress={() => {
          lockToLandscape();
        }}
      >
        <Text>lockToLandscape</Text>
      </TouchableOpacity>
      <TouchableOpacity
        onPress={() => {
          lockToPortrait();
        }}
      >
        <Text>lockToPortrait</Text>
      </TouchableOpacity>
      <TouchableOpacity
        onPress={() => {
          unlockAllOrientations();
        }}
      >
        <Text>unlockAllOrientations</Text>
      </TouchableOpacity>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
});


```


## Contributing

- [Development workflow](CONTRIBUTING.md#development-workflow)
- [Sending a pull request](CONTRIBUTING.md#sending-a-pull-request)
- [Code of conduct](CODE_OF_CONDUCT.md)

## License

MIT

---

Made with [create-react-native-library](https://github.com/callstack/react-native-builder-bob)

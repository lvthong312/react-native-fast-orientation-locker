# react-native-fast-orientation-locker

Support for orientation

## Installation


```sh
npm install react-native-fast-orientation-locker
```


## Usage


```js
import {
  SafeAreaView,
  StyleSheet,
  Text,
  TouchableOpacity,
  View,
} from 'react-native';
import { lockToLandscape } from 'react-native-fast-orientation-locker';

export default function App() {
  return (
    <SafeAreaView style={styles.container}>
      <TouchableOpacity
        onPress={() => {
          lockToLandscape();
        }}
      >
        <Text>Landscape</Text>
      </TouchableOpacity>
      <View style={{ width: 300, height: 100, backgroundColor: 'red' }} />
      <View style={{ width: 300, height: 100, backgroundColor: 'blue' }} />
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

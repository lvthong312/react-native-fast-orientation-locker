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

import { SafeAreaView, StyleSheet, Text, TouchableOpacity } from 'react-native';
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

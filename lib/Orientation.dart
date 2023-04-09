
// Shared preferences
//import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Lock screen rotation to portrait
void orientationLockPortrait() async {
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) { 
    print("Orientation: Locked to portrait ⏫️"); 
  });
}

// Lock screen rotation to portrait
void orientationLockLandscape() async {
  await SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
  ]).then((value) { 
    print("Orientation: Locked to landscape ⏩️");
  });
}

// Unlock screen rotation (if currently locked)
void orientationUnlock() async {

  // Unlock orientation
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]).then((value) { 
    print("Orientation: Orientation unlocked 🔃");
  });

}

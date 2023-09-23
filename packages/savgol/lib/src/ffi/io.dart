import 'dart:ffi';
import 'dart:io';

import 'package:savgol/src/bridge_generated.dart';

typedef ExternalLibrary = DynamicLibrary;

Savgol createWrapperImpl(ExternalLibrary dylib) => SavgolImpl(dylib);

DynamicLibrary createLibraryImpl() {
  const base = 'savgol';

  if (Platform.isIOS || Platform.isMacOS) {
    return DynamicLibrary.executable();
  } else if (Platform.isWindows) {
    return DynamicLibrary.open('$base.dll');
  } else {
    return DynamicLibrary.open('lib$base.so');
  }
}

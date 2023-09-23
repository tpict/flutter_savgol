import 'dart:typed_data';

import 'package:savgol/src/ffi.dart';

/// Savitzky-Golay filter.
Future<Float64List> savgolFilter(
    {required Float64List x,
    required int windowLength,
    required int polyOrder,
    required int derivative}) async {
  return createLib().savgolFilter(
      x: x,
      windowLength: windowLength,
      polyOrder: polyOrder,
      derivative: derivative);
}

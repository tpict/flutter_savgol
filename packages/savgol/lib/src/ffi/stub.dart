import 'package:savgol/src/bridge_generated.dart';

/// Represents the external library for savgol
///
/// Will be a DynamicLibrary for dart:io or WasmModule for dart:html
typedef ExternalLibrary = Object;

Savgol createWrapperImpl(ExternalLibrary lib) => throw UnimplementedError();

Object createLibraryImpl() => throw UnimplementedError();

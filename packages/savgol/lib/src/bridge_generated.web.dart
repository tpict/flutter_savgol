// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.82.1.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';
import 'bridge_generated.dart';
export 'bridge_generated.dart';

class SavgolPlatform extends FlutterRustBridgeBase<SavgolWire> with FlutterRustBridgeSetupMixin {
  SavgolPlatform(FutureOr<WasmModule> dylib) : super(SavgolWire(dylib)) {
    setupMixinConstructor();
  }
  Future<void> setup() => inner.init;

// Section: api2wire

  @protected
  Float64List api2wire_float_64_list(Float64List raw) {
    return raw;
  }

// Section: finalizer
}

// Section: WASM wire module

@JS('wasm_bindgen')
external SavgolWasmModule get wasmModule;

@JS()
@anonymous
class SavgolWasmModule implements WasmModule {
  external Object /* Promise */ call([String? moduleName]);
  external SavgolWasmModule bind(dynamic thisArg, String moduleName);
  external dynamic /* void */ wire_savgol_filter(NativePortType port_, Float64List x, int window_length, int poly_order, int derivative);
}

// Section: WASM wire connector

class SavgolWire extends FlutterRustBridgeWasmWireBase<SavgolWasmModule> {
  SavgolWire(FutureOr<WasmModule> module) : super(WasmModule.cast<SavgolWasmModule>(module));

  void wire_savgol_filter(NativePortType port_, Float64List x, int window_length, int poly_order, int derivative) => wasmModule.wire_savgol_filter(port_, x, window_length, poly_order, derivative);
}

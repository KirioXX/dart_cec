// ignore_for_file: always_specify_types
// ignore_for_file: camel_case_types
// ignore_for_file: non_constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
import 'dart:ffi' as ffi;

/// Bindings for `src/dart_cec.h`.
///
/// Regenerate bindings with `flutter pub run ffigen --config ffigen.yaml`.
///
class DartCecBindings {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  DartCecBindings(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  DartCecBindings.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void StartWork(
    int port,
  ) {
    return _StartWork(
      port,
    );
  }

  late final _StartWorkPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(GoInt64)>>('StartWork');
  late final _StartWork = _StartWorkPtr.asFunction<void Function(int)>();
}

class _GoString_ extends ffi.Struct {
  external ffi.Pointer<ffi.Char> p;

  @ptrdiff_t()
  external int n;
}

typedef ptrdiff_t = ffi.Long;

class GoInterface extends ffi.Struct {
  external ffi.Pointer<ffi.Void> t;

  external ffi.Pointer<ffi.Void> v;
}

class GoSlice extends ffi.Struct {
  external ffi.Pointer<ffi.Void> data;

  @GoInt()
  external int len;

  @GoInt()
  external int cap;
}

typedef GoInt = GoInt64;
typedef GoInt64 = ffi.LongLong;

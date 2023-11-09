import 'dart:developer' as devtool show log;

extension ObjectExtension on Object {
  /// print object in console (REPLACREMENT FOR PRINT)
  void log() => devtool.log('$this');
}

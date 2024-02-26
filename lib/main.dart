import 'dart:async';
import 'package:portfolio/app.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/foundation.dart';
import 'package:portfolio/core/shared/exports.dart';
import 'package:device_preview/device_preview.dart';
import 'package:portfolio/core/extension/object_extension.dart';
import 'package:portfolio/presentation/widgets/loading_web_indicator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runZonedGuarded(() async {
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (BuildContext context) => const ProviderScope(child: MyApp()),
    );
  }, (err, stack) => 'run app error $err'.log());

  SchedulerBinding.instance
      .addPostFrameCallback((stamp) => removeLoadingIndicator());
}

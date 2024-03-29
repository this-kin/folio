import 'package:device_preview/device_preview.dart';
import 'package:portfolio/core/shared/exports.dart';

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.read(routerProvider);
    return MaterialApp.router(
      title: 'Folio',
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.getTheme(context),
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      builder: (context, child) => DevicePreview.appBuilder(context, child),
    );
  }
}

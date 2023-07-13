import 'package:portfolio/core/utils/exports.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends ConsumerWidget {
  const MyApp({Key key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Folio',
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.getTheme(context),
      routeInformationProvider: ,
    );
  }
}

import 'package:portfolio/core/exports.dart';
import 'package:portfolio/modules/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Folio',
      theme: CustomTheme.getTheme(context),
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: RouteGenerator.home,
      home: const HomePage(),
    );
  }
}

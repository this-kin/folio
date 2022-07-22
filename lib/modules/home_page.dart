import 'package:portfolio/core/exports.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: theme.backgroundColor,
          title: Container(
            padding: const EdgeInsets.only(left: 20),
            child: SvgPicture.asset(
              ConstanceData.appicon,
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
        key: _globalKey,
        body: const ResponsiveWidget(
          largeScreen: LargeScreen(),
          smallScreen: SmallScreen(),
        ),
      ),
    );
  }
}

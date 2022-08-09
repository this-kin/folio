import 'package:portfolio/core/exports.dart';

class TabWidget extends StatefulWidget {
  const TabWidget({Key key}) : super(key: key);

  @override
  State<TabWidget> createState() => _TabWidgetState();
}

class _TabWidgetState extends State<TabWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          SizedBox(
            width: 370,
            child: TabBar(
              tabs: [
                Tab(
                  text: "Website",
                ),
                Tab(
                  text: "illustration",
                ),
                Tab(
                  text: "Mobile",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

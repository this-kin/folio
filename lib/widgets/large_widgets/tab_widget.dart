import 'package:portfolio/core/exports.dart';
import 'package:portfolio/widgets/large_widgets/tab_view.dart';

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(
            width: 370,
            child: TabBar(
              indicatorColor: purpleColor,
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
          ),
          SizedBox(height: 50),
          SizedBox(
            width: double.infinity,
            height: 2400,
            child: TabBarView(
              children: [
                TabView(),
                TabView(),
                TabView(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

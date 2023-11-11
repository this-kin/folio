import 'package:portfolio/core/shared/exports.dart';
import 'package:portfolio/presentation/screens/drawer/drawer.dart';
import 'package:portfolio/core/extension/buildcontext_extension.dart';

class HomeDesktop extends ConsumerWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final app = ref.read(appProvider);
    return Scaffold(
      key: app.globalKey,
      drawer: const AppDrawer(),
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: backgroundColor,
            ),
          ),
          Container(
            color: darkBlueColor,
            width: context.width * 0.40,
          )
        ],
      ),
    );
  }
}

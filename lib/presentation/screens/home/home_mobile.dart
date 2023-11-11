import 'package:portfolio/core/shared/exports.dart';
import 'package:portfolio/presentation/screens/drawer/drawer.dart';

class HomeMobile extends ConsumerWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final app = ref.read(appProvider);
    return Scaffold(
      key: app.globalKey,
      drawer: const AppDrawer(),
      backgroundColor: backgroundColor,
      body: const Text('Mobile View'),
    );
  }
}

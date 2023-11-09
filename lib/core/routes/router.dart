import 'package:portfolio/core/shared/exports.dart';
import 'package:portfolio/presentation/screens/home/home.dart';

final routerProvider = Provider<GoRouter>((ref) {
  final router = RouterNotifier(ref);

  return GoRouter(
    routes: router.routes,
    refreshListenable: router,
    debugLogDiagnostics: true,
    initialLocation: '/home',
  );
});

class RouterNotifier extends ChangeNotifier {
  final Ref ref;

  RouterNotifier(this.ref);

  List<GoRoute> get routes => _routes;

  final List<GoRoute> _routes = [
    GoRoute(
      path: '/home',
      name: 'home',
      builder: (_, state) => const Home(),
    )
  ];
}

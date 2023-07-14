import 'package:portfolio/core/routes/route_generator.dart';
import 'package:portfolio/core/utils/exports.dart';

final routerProvider = Provider<GoRouter>((ref) {
  final router = RouterNotifier(ref);

  return GoRouter(
    routes: router.routes,
    refreshListenable: router,
    debugLogDiagnostics: true,
  );
});

class RouterNotifier extends ChangeNotifier {
  final Ref _ref;

  RouterNotifier(this._ref);

  List<GoRoute> get routes => _routes;

  final List<GoRoute> _routes = [
    GoRoute(
      path: RouteGenerator.home,
      name: RouteGenerator.home,
      builder: (_, state) => Home(),
    )
  ];
}

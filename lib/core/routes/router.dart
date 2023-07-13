import 'package:portfolio/core/routes/route_generator.dart';
import 'package:portfolio/core/utils/exports.dart';

class RouterNotifier extends ChangeNotifier {
  final Ref _ref;

  RouterNotifier(this._ref);

  final List<GoRoute> routes = [
    GoRoute(
      path: RouteGenerator.home,
      name: RouteGenerator.home,
      builder: (_, state) => const Home(),
    )
  ];
}

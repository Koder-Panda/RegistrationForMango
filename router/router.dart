import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mango/screens/home_screen.dart';

final routerProvider =
    NotifierProvider<RouterController, GoRouter>(RouterController.new);

class RouterController extends Notifier<GoRouter> {
  @override
  build() {
    return GoRouter(
      routes: routes,
    );
  }

  List<RouteBase> get routes => [
        GoRoute(
          path: '/',
          builder: (context, state) {
            return const HomeScreen();
          },
        ),
      ];
}

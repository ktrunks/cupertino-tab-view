import 'package:fluro/fluro.dart';
import 'package:gully_network_task/route/home/home_route_handlers.dart';
class HomeRoute {
  ///
   static late FluroRouter router ;

  /// root end point
  static const String homeRoot = "/";


  static void configureRoutes(FluroRouter router) {
    router.define(homeRoot,
        handler: homeRootHandler, transitionType: TransitionType.inFromRight);
  }
}

import 'package:fluro/fluro.dart';
import 'package:gully_network_task/route/home/home_route_handlers.dart';
import 'package:gully_network_task/route/to_do/to_do_route_handler.dart';
class HomeRoute {
  ///
   static late FluroRouter router ;

  /// root end point
  static const String homeRoot = "/";

   static const String toDoDetail = '/detail';


   static void configureRoutes(FluroRouter router) {
    router.define(homeRoot,
        handler: homeRootHandler, transitionType: TransitionType.inFromRight);
    router.define(toDoDetail,
        handler: toDoDetailHandler, transitionType: TransitionType.inFromRight);
  }
}

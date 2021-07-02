import 'package:fluro/fluro.dart';
import 'package:gully_network_task/route/to_do/to_do_route_handler.dart';

class ToDoRoute {
  ///
  static late FluroRouter router;

  /// root end point
  static const String toDoRoot = "/";

  static const String toDoDetail = '/detail';

  static void configureRoutes(FluroRouter router) {
    router.define(toDoRoot,
        handler: toDoRootHandler, transitionType: TransitionType.inFromRight);
    router.define(toDoDetail,
        handler: toDoDetailHandler, transitionType: TransitionType.inFromRight);
  }
}

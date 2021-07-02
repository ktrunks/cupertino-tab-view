import 'package:fluro/fluro.dart';
import 'package:gully_network_task/route/route_handlers.dart';

class AppRoutes {
  ///
  static late FluroRouter router;

  /// root end point
  static const String root = "/";

  static const String detail = "/detail";

  static void configureRoutes(FluroRouter router) {
    router.define(root,
        handler: rootHandler, transitionType: TransitionType.inFromRight);
    router.define(detail,
        handler: detailHandler, transitionType: TransitionType.inFromRight);
  }

}

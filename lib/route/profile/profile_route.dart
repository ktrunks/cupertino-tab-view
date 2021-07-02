import 'package:fluro/fluro.dart';
import 'package:gully_network_task/route/profile/profile_route_handlers.dart';

class ProfileRoute {
  ///
  static late FluroRouter router;

  /// root end point
  static const String profileRoot = "/";

  static void configureRoutes(FluroRouter router) {
    router.define(profileRoot,
        handler: profileRootHandler,
        transitionType: TransitionType.inFromRight);
  }
}

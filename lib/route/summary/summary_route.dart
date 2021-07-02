import 'package:fluro/fluro.dart';
import 'package:gully_network_task/route/summary/summary_route_handler.dart';

class SummaryRoute {
  ///
  static late FluroRouter router;

  /// root end point
  static const String summaryRoot = "/";


  static const String summaryDetail = '/detail';

  static void configureRoutes(FluroRouter router) {
    router.define(summaryRoot,
        handler: summaryRootHandler, transitionType: TransitionType.inFromRight);
    router.define(summaryDetail,
        handler: summaryDetailHandler, transitionType: TransitionType.inFromRight);

  }
}

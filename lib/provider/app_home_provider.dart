import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppHomeProvider extends ChangeNotifier {
  /// navigator key for home screen
  late GlobalKey<NavigatorState> homeNavigatorKey;

  /// style navigator key
  late GlobalKey<NavigatorState> styleNavigatorKey;

  /// profile navigator key
  late GlobalKey<NavigatorState> profileNavigatorKey;

  /// look navigator key
  late GlobalKey<NavigatorState> lookNavigatorKey;

  /// look navigator key
  late GlobalKey<NavigatorState> toDoNavigatorKey;

  ///
  CupertinoTabController cupertinoTabController =
      CupertinoTabController(initialIndex: 0);

  AppHomeProvider() {
    homeNavigatorKey = GlobalKey<NavigatorState>();
    styleNavigatorKey = GlobalKey<NavigatorState>();
    profileNavigatorKey = GlobalKey<NavigatorState>();
    lookNavigatorKey = GlobalKey<NavigatorState>();
    toDoNavigatorKey = GlobalKey<NavigatorState>();
  }

  /// on back pressed of home screen
  Future<bool> onBackPressed(BuildContext context) {
    switch (cupertinoTabController.index) {
      case 0:
        if (homeNavigatorKey.currentState!.canPop()) {
          homeNavigatorKey.currentState!.pop();
          return Future.value(false);
        } else {
          SystemChannels.platform.invokeMethod('SystemNavigator.pop');
          return Future.value(true);
        }
      case 1:
        if (toDoNavigatorKey.currentState!.canPop()) {
          toDoNavigatorKey.currentState!.pop();
          return Future.value(false);
        } else {
          SystemChannels.platform.invokeMethod('SystemNavigator.pop');
          return Future.value(true);
        }
      case 3:
        debugPrint('on click of back for pop');
        if (styleNavigatorKey.currentState!.canPop()) {
          styleNavigatorKey.currentState!.pop();
          return Future.value(false);
        } else
          SystemChannels.platform.invokeMethod('SystemNavigator.pop');
        return Future.value(true);
      case 4:
        if (profileNavigatorKey.currentState!.canPop()) {
          profileNavigatorKey.currentState!.pop();
          return Future.value(false);
        } else {
          SystemChannels.platform.invokeMethod('SystemNavigator.pop');
          return Future.value(true);
        }
      case 2:
        if (lookNavigatorKey.currentState!.canPop()) {
          lookNavigatorKey.currentState!.pop();
          return Future.value(false);
        } else
          SystemChannels.platform.invokeMethod('SystemNavigator.pop');
        return Future.value(true);
      default:
        return Future.value(true);
    }
  }
}

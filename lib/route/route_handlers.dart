import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:gully_network_task/provider/app_home_provider.dart';
import 'package:gully_network_task/ui/app_home/app_home_screen.dart';
import 'package:provider/provider.dart';

/// root application launch
final Handler rootHandler =
    Handler(handlerFunc: (context, params) => getHome());

/// getHome screen
Widget getHome() {
  return ChangeNotifierProvider<AppHomeProvider>(
    create: (context) => AppHomeProvider(),
    child: AppHomeScreen(),
  );
}

final Handler detailHandler = Handler(
    handlerFunc: (context, params) => ChangeNotifierProvider<AppHomeProvider>(
          create: (context) => AppHomeProvider(),
          child: AppHomeScreen(),
        ));

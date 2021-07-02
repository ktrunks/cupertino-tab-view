import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gully_network_task/provider/app_home_provider.dart';
import 'package:gully_network_task/route/home/home_route.dart';
import 'package:gully_network_task/route/profile/profile_route.dart';
import 'package:gully_network_task/route/summary/summary_route.dart';
import 'package:gully_network_task/route/to_do/to_do_route.dart';
import 'package:gully_network_task/util/colors.dart';
import 'package:provider/provider.dart';

class AppHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appHomeProvider = Provider.of<AppHomeProvider>(context);

    return WillPopScope(
      onWillPop: () => appHomeProvider.onBackPressed(context),
      child: CupertinoTabScaffold(
        controller: appHomeProvider.cupertinoTabController,
        tabBar: CupertinoTabBar(
          activeColor: primaryColor,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/home.png"),
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: const ImageIcon(
                  AssetImage("assets/to_do.png"),
                ),
                label: 'To Do'),
            BottomNavigationBarItem(
                icon: const ImageIcon(
                  AssetImage("assets/summary.png"),
                ),
                label: 'Summary'),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/profile.png"),
                ),
                label: 'Profile'),
          ],
        ),
        tabBuilder: (context, index) {
          late Widget homeTabWidget;
          switch (index) {
            case 0:
              homeTabWidget = CupertinoTabView(
                  onGenerateRoute: HomeRoute.router.generator,
                  navigatorKey: appHomeProvider.homeNavigatorKey);
              break;
            case 1:
              // applicationProvider.pauseVideo();
              homeTabWidget = CupertinoTabView(
                  onGenerateRoute: ToDoRoute.router.generator,
                  navigatorKey: appHomeProvider.toDoNavigatorKey);
              break;

            case 2:
              homeTabWidget = CupertinoTabView(
                onGenerateRoute: SummaryRoute.router.generator,
                navigatorKey: appHomeProvider.lookNavigatorKey,
              );
              break;
            case 3:
              homeTabWidget = CupertinoTabView(
                  onGenerateRoute: ProfileRoute.router.generator,
                  navigatorKey: appHomeProvider.styleNavigatorKey);
              break;
          }
          return homeTabWidget;
        },
      ),
    );
    ;
  }
}

import 'package:fluro/fluro.dart' as route;
import 'package:flutter/material.dart';
import 'package:gully_network_task/provider/modistabox_application.dart';
import 'package:gully_network_task/route/app_screen.dart';
import 'package:gully_network_task/route/home/home_route.dart';
import 'package:gully_network_task/route/profile/profile_route.dart';
import 'package:gully_network_task/route/summary/summary_route.dart';
import 'package:gully_network_task/route/to_do/to_do_route.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    final router = route.FluroRouter();
    final profileRouter = route.FluroRouter();
    final summaryRouter = route.FluroRouter();
    final homeRouter = route.FluroRouter();
    final toDoRouter = route.FluroRouter();

    AppRoutes.router = router;
    ProfileRoute.router = profileRouter;
    SummaryRoute.router = summaryRouter;
    HomeRoute.router = homeRouter;
    ToDoRoute.router = toDoRouter;
    HomeRoute.configureRoutes(homeRouter);
    ProfileRoute.configureRoutes(profileRouter);
    SummaryRoute.configureRoutes(summaryRouter);
    ToDoRoute.configureRoutes(toDoRouter);
    AppRoutes.configureRoutes(router);
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ApplicationProvider>(
            create: (_) => ApplicationProvider())
      ],
      child: MaterialApp(
        initialRoute: AppRoutes.root,
        debugShowCheckedModeBanner: false,
        title: 'Task Management',
        onGenerateRoute: AppRoutes.router.generator,
      ),
    );
  }
}

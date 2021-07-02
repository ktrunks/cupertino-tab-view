import 'package:fluro/fluro.dart';
import 'package:gully_network_task/provider/to_do_detail_provider.dart';
import 'package:gully_network_task/provider/to_do_provider.dart';
import 'package:gully_network_task/ui/to_do/to_do_detail_screen.dart';
import 'package:gully_network_task/ui/to_do/to_do_screen.dart';
import 'package:provider/provider.dart';

/// root application launch
final Handler toDoRootHandler = Handler(handlerFunc: (context, params) {
  return ChangeNotifierProvider<ToDoProvider>(
      create: (context) => ToDoProvider(), child: ToDoScreen());
});

final Handler toDoDetailHandler = Handler(handlerFunc: (context, params) {
  return ChangeNotifierProvider<ToDoDetailProvider>(
      create: (context) => ToDoDetailProvider(), child: ToDoDetailScreen());
});

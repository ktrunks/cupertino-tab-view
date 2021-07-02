import 'package:fluro/fluro.dart';
import 'package:gully_network_task/provider/home_provider.dart';
import 'package:gully_network_task/ui/home/home_screen.dart';
import 'package:provider/provider.dart';

/// root application launch
final Handler homeRootHandler = Handler(
    handlerFunc: (context, params) => ChangeNotifierProvider<HomeProvider>(
        create: (context) => HomeProvider(), child: HomeScreen()));

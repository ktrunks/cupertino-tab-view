import 'package:fluro/fluro.dart';
import 'package:gully_network_task/provider/profile_provider.dart';
import 'package:gully_network_task/ui/profile/profile_screen.dart';
import 'package:provider/provider.dart';

final Handler profileRootHandler = Handler(handlerFunc: (context, params) {
  return ChangeNotifierProvider<ProfileProvider>(
      create: (context) => ProfileProvider(), child: ProfileScreen());
});

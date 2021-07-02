import 'package:flutter/material.dart';
import 'package:gully_network_task/provider/app_home_provider.dart';
import 'package:gully_network_task/route/to_do/to_do_route.dart';
import 'package:gully_network_task/util/style.dart';
import 'package:provider/provider.dart';

class ToDoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appHomeProvider = Provider.of<AppHomeProvider>(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'To Do',
            style: textStyleBack14,
          ),
        ),
        body: Center(
          child: InkWell(
              onTap: () {
                debugPrint('on click of to do details ');
                appHomeProvider.toDoNavigatorKey.currentState!
                    .pushNamed(ToDoRoute.toDoDetail);
              },
              child: Text('To Do Screen')),
        ),
      ),
    );
  }
}

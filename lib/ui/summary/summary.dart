import 'package:flutter/material.dart';
import 'package:gully_network_task/provider/app_home_provider.dart';
import 'package:gully_network_task/route/summary/summary_route.dart';
import 'package:gully_network_task/util/style.dart';
import 'package:provider/provider.dart';

class SummaryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appHomeProvider = Provider.of<AppHomeProvider>(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Summary Screen',
            style: textStyleBack14,
          ),
        ),
        body: Center(
          child: InkWell(
              onTap: () {
                appHomeProvider.lookNavigatorKey.currentState!
                    .pushNamed(SummaryRoute.summaryDetail);
              },
              child: Text('Click here for \nSummary Detail Screen')),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gully_network_task/provider/app_home_provider.dart';
import 'package:gully_network_task/route/home/home_route.dart';
import 'package:gully_network_task/util/colors.dart';
import 'package:gully_network_task/util/style.dart';
import 'package:provider/provider.dart';

class PendingTaskWidget extends StatelessWidget {
  final String assetPath;
  final String title;
  final int days;
  final String startTime;
  final String endTime;
  final TextStyle textStyle;

  PendingTaskWidget(
      {required this.assetPath,
      required this.title,
      required this.days,
      required this.startTime,
      required this.endTime,
      required this.textStyle});

  @override
  Widget build(BuildContext context) {
    final appHomeProvider = Provider.of<AppHomeProvider>(context);
    return InkWell(
      onTap: () {
        appHomeProvider.homeNavigatorKey.currentState!
            .pushNamed(HomeRoute.toDoDetail);
      },
      child: Card(
        elevation: 1,
        child: Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(8))),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(assetPath),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: textStyleBack12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/clock.png'),
                            const SizedBox(
                              width: 5,
                            ),
                            Center(
                              child: Text(
                                '$startTime  $endTime',
                                style: textStyleTime10,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: remainingDayBackGroundColor,
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          ' ${days} days running',
                          style: textStyle,
                        ),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

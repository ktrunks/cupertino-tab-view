import 'package:flutter/material.dart';
import 'package:gully_network_task/ui/home/pending_task.dart';
import 'package:gully_network_task/ui/home/task_widget.dart';
import 'package:gully_network_task/util/colors.dart';
import 'package:gully_network_task/util/style.dart';

import 'drawer_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: hambergerColor),
          title: Text(
            'Home',
            style: titleTextStyleBack20,
          ),
          backgroundColor: Colors.white,
        ),
        drawer: DrawerWidget(),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            shrinkWrap: true,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'My Task',
                    style: textStyleBack14,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Row(
                    children: [
                      TaskWidget(
                        assetPath: 'assets/mobile_app.png',
                        taskCount: 4,
                        contentText: 'Mobile App Design',
                        backgroundColor: taskContainerColor,
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      TaskWidget(
                        assetPath: 'assets/website_design.png',
                        taskCount: 4,
                        contentText: 'Mobile App Design',
                        backgroundColor: taskContainerColor2,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    'Pending',
                    style: textStyleBack14,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Column(
                    children: [
                      PendingTaskWidget(
                        assetPath: 'assets/edit.png',
                        title: 'Product Design Task online class app ',
                        days: 4,
                        startTime: '10:00 PM',
                        endTime: '12:00 PM',
                        textStyle: textStylePackage10,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      PendingTaskWidget(
                        assetPath: 'assets/package.png',
                        title: 'Product Design Task online class app ',
                        days: 4,
                        startTime: '10:00 PM',
                        endTime: '12:00 PM',
                        textStyle: textStylePackage10,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      PendingTaskWidget(
                        assetPath: 'assets/edit_sketch.png',
                        title: 'Product Design Task online class app ',
                        days: 4,
                        startTime: '10:00 PM',
                        endTime: '12:00 PM',
                        textStyle: textStyleEidtScktech10,
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

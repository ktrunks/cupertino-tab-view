import 'package:flutter/material.dart';
import 'package:gully_network_task/util/colors.dart';
import 'package:gully_network_task/util/style.dart';
import 'package:gully_network_task/widget/divider_widget.dart';

class EventTimingWidget extends StatelessWidget {
  final String time;
  final String title;
  final String hour;
  final bool checkStatus;
  final Color backgroundColor;

  EventTimingWidget(
      {required this.time,
      required this.title,
      required this.hour,
      required this.checkStatus,
      required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, top: 8),
      child: Column(
        children: [
          DividerWidget(
            dividerColor: checkStatus ? taskContainerColor2 : Colors.grey,
            status: checkStatus,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('$time'),
                  const SizedBox(
                    width: 20,
                  )
                ],
              ),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                        bottomRight: Radius.circular(8))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '$title',
                                style: textStyleBack12,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                '$hour Hour',
                                style: textStyleBack12,
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(23))),
                          child: checkStatus
                              ? Icon(
                                  Icons.check,
                                  size: 12,
                                  color: Colors.cyanAccent,
                                )
                              : Container(),
                        ),
                      )
                    ],
                  ),
                ),
              ))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          DividerWidget(
            dividerColor: checkStatus ? taskContainerColor2 : Colors.grey,
            status: checkStatus,
          ),
        ],
      ),
    );
  }
}

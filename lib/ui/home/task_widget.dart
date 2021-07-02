import 'package:flutter/material.dart';
import 'package:gully_network_task/util/style.dart';

class TaskWidget extends StatelessWidget {
  final String assetPath;
  final String contentText;
  final int taskCount;
  final Color backgroundColor;

  TaskWidget(
      {required this.assetPath,
      required this.contentText,
      required this.taskCount,
      required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.43,
      height: MediaQuery.of(context).size.width * 0.4,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(assetPath),
          const SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      contentText,
                      style: textStyleWhite14,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      '$taskCount task',
                      style: textStyleWhite10,
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset('assets/arrow.png'),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

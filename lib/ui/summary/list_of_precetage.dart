import 'package:flutter/material.dart';
import 'package:gully_network_task/util/colors.dart';
import 'package:gully_network_task/util/style.dart';
import 'package:gully_network_task/widget/line_percentage.dart';

class ListOfPercentage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Text(
            'Training',
            style: textStyleBack14,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Wireframe',
                style: textStyleEdit10,
              ),
              Row(
                children: [
                  Expanded(
                    child: LinearPercentIndicator(
                      lineHeight: 5.0,
                      percent: 0.2,
                      backgroundColor: Colors.grey,
                      progressColor: Colors.blue,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text('20%')
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Landing Screen',
                style: textStyleEdit10,
              ),
              Row(
                children: [
                  Expanded(
                    child: LinearPercentIndicator(
                      lineHeight: 5.0,
                      percent: 0.4,
                      backgroundColor: Colors.grey,
                      progressColor: Colors.blue,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text('40%')
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Prototype',
                style: textStyleEdit10,
              ),
              Row(
                children: [
                  Expanded(
                    child: LinearPercentIndicator(
                      lineHeight: 5.0,
                      percent: 0.6,
                      backgroundColor: Colors.grey,
                      progressColor: Colors.blue,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text('60%')
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Illustration',
                style: textStyleEdit10,
              ),
              Row(
                children: [
                  Expanded(
                    child: LinearPercentIndicator(
                      lineHeight: 5.0,
                      percent: 0.8,
                      backgroundColor: Colors.grey,
                      progressColor: primaryColor,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text('80%')
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

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
        BarWidget(
          title: 'Wireframe',
          percentage: 0.2,
        ),
        BarWidget(
          title: 'Landing Screen',
          percentage: 0.4,
        ),
        BarWidget(
          title: 'Prototype',
          percentage: 0.6,
        ),
        BarWidget(
          title: 'Illustration',
          percentage: 0.8,
        ),
      ],
    );
  }
}

class BarWidget extends StatelessWidget {
  final String title;
  final double percentage;

  BarWidget({required this.title, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$title',
            style: textStyleEdit10,
          ),
          Row(
            children: [
              Expanded(
                child: LinearPercentIndicator(
                  lineHeight: 5.0,
                  percent: percentage,
                  backgroundColor: Colors.grey,
                  progressColor: primaryColor,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text('${percentage * 100}')
            ],
          ),
        ],
      ),
    );
  }
}

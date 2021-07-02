import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gully_network_task/ui/summary/list_of_precetage.dart';
import 'package:gully_network_task/util/colors.dart';
import 'package:gully_network_task/util/style.dart';
import 'package:gully_network_task/widget/circular_progress.dart';
import 'package:gully_network_task/widget/line_percentage.dart';

class SummaryDetailScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: hambergerColor),
          backgroundColor: Colors.white,
          title: Text(
            'Summary',
            style: textStyleBack14,
          ),
        ),
        body: ListView(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          decoration: BoxDecoration(
                              color: creamColor,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                  bottomRight: Radius.circular(8))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Text(
                                  'Activity',
                                  style: textStyleBack14,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 4,
                                  child: BarChart(BarChartData(
                                      borderData: FlBorderData(
                                          border: Border(
                                        top: BorderSide.none,
                                        right: BorderSide.none,
                                        left: BorderSide(width: 0.5),
                                        bottom: BorderSide(width: 0.5),
                                      )),
                                      groupsSpace: 25,
                                      barGroups: [
                                        BarChartGroupData(x: 0, barRods: [
                                          BarChartRodData(
                                              y: 0,
                                              width: 5,
                                              colors: [primaryColor]),
                                        ]),
                                        BarChartGroupData(x: 1, barRods: [
                                          BarChartRodData(
                                              y: 75,
                                              width: 5,
                                              colors: [primaryColor]),
                                        ]),
                                        BarChartGroupData(x: 2, barRods: [
                                          BarChartRodData(
                                              y: 100,
                                              width: 5,
                                              colors: [primaryColor]),
                                        ]),
                                        BarChartGroupData(x: 3, barRods: [
                                          BarChartRodData(
                                              y: 75,
                                              width: 5,
                                              colors: [primaryColor]),
                                        ]),
                                        BarChartGroupData(x: 4, barRods: [
                                          BarChartRodData(
                                              y: 100,
                                              width: 5,
                                              colors: [primaryColor]),
                                        ]),
                                      ])),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          decoration: BoxDecoration(
                              color: creamColor,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                  bottomRight: Radius.circular(8))),
                          child: ListOfPercentage(),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          decoration: BoxDecoration(
                              color: creamColor,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                  bottomRight: Radius.circular(8))),
                          child: ListOfPercentage(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          decoration: BoxDecoration(
                              color: creamColor,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                  bottomRight: Radius.circular(8))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Text(
                                  'Todays Result',
                                  style: textStyleBack14,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: CircularPercentIndicator(
                                  radius: MediaQuery.of(context).size.width / 3,
                                  lineWidth: 15,
                                  reverse: true,
                                  percent: 0.8,
                                  center: new Text("80 %"),
                                  progressColor: primaryColor,
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}

// /// Bar chart example
// import 'package:charts_flutter/flutter.dart' as charts;
// import 'package:flutter/material.dart';
//
// class SimpleBarChart extends StatelessWidget {
//   final List<charts.Series<OrdinalSales, String>> seriesList;
//   final bool animate;
//
//   SimpleBarChart(this.seriesList, {required this.animate});
//
//
//   @override
//   Widget build(BuildContext context) {
//     return new charts.BarChart(
//       seriesList,
//       animate: animate,
//     );
//   }
//
//   /// Create one series with sample hard coded data.
//   static List<charts.Series<OrdinalSales, String>> createSampleData() {
//     final data = [
//       new OrdinalSales('2014', 5),
//       new OrdinalSales('2015', 25),
//       new OrdinalSales('2016', 100),
//       new OrdinalSales('2017', 75),
//     ];
//
//     return [
//       new charts.Series<OrdinalSales, String>(
//         id: 'Sales',
//         colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
//         domainFn: (OrdinalSales sales, _) => sales.year,
//         measureFn: (OrdinalSales sales, _) => sales.sales,
//         data: data,
//       )
//     ];
//   }
// }
//
// /// Sample ordinal data type.
// class OrdinalSales {
//   final String year;
//   final int sales;
//
//   OrdinalSales(this.year, this.sales);
// }
import 'package:fluro/fluro.dart';
import 'package:gully_network_task/provider/summary_detail_provider.dart';
import 'package:gully_network_task/provider/summary_provider.dart';
import 'package:gully_network_task/ui/summary/summary.dart';
import 'package:gully_network_task/ui/summary/summary_detail_screen.dart';
import 'package:provider/provider.dart';

/// root application launch
final Handler summaryRootHandler = Handler(handlerFunc: (context, params) {
  return ChangeNotifierProvider<SummaryProvider>(
      create: (context) => SummaryProvider(), child: SummaryScreen());
});

final Handler summaryDetailHandler = Handler(handlerFunc: (context, params) {
  return ChangeNotifierProvider<SummaryDetailProvider>(
      create: (context) => SummaryDetailProvider(),
      child: SummaryDetailScreen());
});

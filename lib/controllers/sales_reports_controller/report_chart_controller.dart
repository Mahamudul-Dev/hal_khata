import 'package:get/get.dart';
import 'package:hal_khata/models/sales_report/chart_model.dart';

class ReportChartController extends GetxController {
  final List<ChartModel> chartData = <ChartModel>[
    ChartModel(2010, 10.53, 3.3),
    ChartModel(2011, 9.5, 5.4),
    ChartModel(2012, 10, 2.65),
    ChartModel(2013, 9.4, 2.62),
    ChartModel(2014, 5.8, 1.99),
    ChartModel(2015, 4.9, 1.44),
    ChartModel(2016, 4.5, 2),
    ChartModel(2017, 3.6, 1.56),
    ChartModel(2018, 3.43, 2.1),
  ].obs;
}

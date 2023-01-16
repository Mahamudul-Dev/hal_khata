import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hal_khata/controllers/sales_reports_controller/report_chart_controller.dart';
import 'package:hal_khata/models/sales_report/chart_model.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class OverviewChart extends StatelessWidget {
  const OverviewChart({super.key});

  @override
  Widget build(BuildContext context) {
    //getx dependency injection
    final ReportChartController controller = Get.put(ReportChartController());

    return SfCartesianChart(
        margin: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 8.0),
        series: <ChartSeries>[
          SplineAreaSeries<ChartModel, int>(
              dataSource: controller.chartData,
              xValueMapper: (ChartModel data, _) => data.x,
              yValueMapper: (ChartModel data, _) => data.y),
          SplineAreaSeries<ChartModel, int>(
              dataSource: controller.chartData,
              xValueMapper: (ChartModel data, _) => data.x,
              yValueMapper: (ChartModel data, _) => data.y1),
        ]);
  }
}

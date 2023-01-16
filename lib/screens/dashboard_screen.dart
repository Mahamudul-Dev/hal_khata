import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hal_khata/controllers/update_controllers/update_notice_controller.dart';
import 'package:hal_khata/widgets/dashboard/overview_chart.dart';
import 'package:hal_khata/widgets/dashboard/status_bar.dart';
import 'package:marquee/marquee.dart';

class DashBoard extends StatelessWidget {
  DashBoard({super.key});
  // getx dependency injection
  final UpdateNoticeController noticeController =
      Get.put(UpdateNoticeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: const Icon(
            Icons.dashboard,
            color: Colors.black,
          ),
          title: const Text(
            'Dashboard',
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 22,
                width: MediaQuery.of(context).size.width,
                color: Colors.greenAccent,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 3.0),
                  child: Obx(
                    () => Marquee(
                      text: noticeController.notice.toString(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                      scrollAxis: Axis.horizontal,
                      textDirection: TextDirection.ltr,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      blankSpace: 20.0,
                      velocity: 100.0,
                      pauseAfterRound: const Duration(seconds: 1),
                      startPadding: 10.0,
                      accelerationDuration: const Duration(seconds: 1),
                      accelerationCurve: Curves.linear,
                      decelerationDuration: const Duration(milliseconds: 500),
                      decelerationCurve: Curves.easeOut,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'overview'.tr,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const StatusBar(),
              const SizedBox(
                height: 10.0,
              ),
              const OverviewChart(),
              Row(
                children: [
                  Container(
                    width: 500,
                    height: 400,
                    color: Colors.amberAccent,
                  ),
                  Expanded(
                      child: Container(
                    width: 500,
                    height: 400,
                    color: Colors.blueAccent,
                  ))
                ],
              ),
              Container(
                color: Colors.black,
                height: 150,
                child: const Center(
                  child: Text(
                    'Developed By Mahamudul Hasan',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

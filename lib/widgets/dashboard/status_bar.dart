import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hal_khata/widgets/buttons_and_tabs/status_tab_item.dart';

class StatusBar extends StatelessWidget {
  const StatusBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 180,
      color: Colors.white54,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          StatusTabItem(
              tabColor: Colors.red.shade400,
              tabTitle: 'total_stock'.tr,
              child: const Text(
                '৳4,00,730',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
          StatusTabItem(
              tabColor: Colors.blue.shade800,
              tabTitle: 'today_profit'.tr,
              child: const Text(
                '৳4,730',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
          StatusTabItem(
              tabColor: Colors.green.shade600,
              tabTitle: 'today_sale'.tr,
              child: const Text(
                '৳14,730',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
          StatusTabItem(
              tabColor: Colors.blueGrey,
              tabTitle: 'today_due'.tr,
              child: const Text(
                '৳160',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ))
        ],
      ),
    );
  }
}

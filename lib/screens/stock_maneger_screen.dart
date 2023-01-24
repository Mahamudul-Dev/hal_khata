import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hal_khata/controllers/stock_controllers/stock_controller.dart';
import 'package:hal_khata/widgets/stock_maneger/add_stock_tab_widget.dart';
import 'package:hal_khata/widgets/stock_maneger/stock_display.dart';

class StockManeger extends StatelessWidget {
  StockManeger({super.key});
  // dependency injection
  final StockController _controller = Get.put(StockController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: const Icon(
            Icons.add_box,
            color: Colors.black,
          ),
          title: Text(
            'sock_maneger'.tr,
            style: const TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [AddStockTab(), DisplayStock()],
          ),
        ));
  }
}

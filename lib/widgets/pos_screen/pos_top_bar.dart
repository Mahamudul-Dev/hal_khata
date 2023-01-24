import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hal_khata/controllers/pos_controller/pos_controller.dart';
import 'package:searchbar_animation/searchbar_animation.dart';

class PosTopBar extends StatelessWidget {
  PosTopBar({super.key});

  // dependemcy injection
  final PosController _controller = Get.put(PosController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        children: [
          Expanded(child: Text('pos_maneger'.tr)),
        ],
      ),
    );
  }
}

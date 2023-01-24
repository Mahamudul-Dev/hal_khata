import 'package:flutter/material.dart';
import 'package:hal_khata/screens/sell_products.dart';
import 'package:hal_khata/screens/category_maneger_screen.dart';
import 'package:hal_khata/screens/dashboard_screen.dart';
import 'package:hal_khata/screens/stock_maneger_screen.dart';
import 'package:hal_khata/screens/store_screen.dart';
import 'package:hal_khata/screens/wallet_screen.dart';
import 'package:sidebarx/sidebarx.dart';

class ViewScreenContainer extends StatelessWidget {
  const ViewScreenContainer({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final SidebarXController controller;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        switch (controller.selectedIndex) {
          case 0:
            return DashBoard();
          case 1:
            return StockManeger();
          case 2:
            return CategoryManeger();
          case 3:
            return SaleProductScreen();
          case 4:
            return const StoreScreen();
          case 5:
            return const WalletScreen();
          default:
            return const Text('No Page Found');
        }
      },
    );
  }
}

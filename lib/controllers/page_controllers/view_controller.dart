import 'package:get/state_manager.dart';
import 'package:hal_khata/screens/add_product_screen.dart';
import 'package:hal_khata/screens/category_maneger_screen.dart';
import 'package:hal_khata/screens/dashboard_screen.dart';
import 'package:hal_khata/screens/stock_maneger_screen.dart';

class ViewController extends GetxController {
  var pages = [
    DashBoard(),
    const StockManeger(),
    const AddProductScreen(),
    const CategoryManeger(),
  ].obs;

  var currentIndex = 0.obs;

  changeIndex(int index) {
    currentIndex.value = index;
  }
}

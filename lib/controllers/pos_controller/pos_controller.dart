import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hal_khata/controllers/products_and_category_controller/category_controller.dart';
import 'package:hal_khata/controllers/stock_controllers/stock_controller.dart';

class PosController extends GetxController {
  // controllers
  final TextEditingController searchTextController = TextEditingController();
  final CategoryController _categoryController = Get.put(CategoryController());
  final StockController _stockController = Get.put(StockController());

  // variables
  var selectedIndex = 0.obs;
  late var categories = _categoryController.categories;
  late var products = _stockController.allProducts.products;

  onSearchChanged(String value) {}
  onSearchSubmit(String query) {}
  onTapCat(int index) {}

  @override
  void dispose() {
    // TODO: implement dispose
    _categoryController.dispose();
    super.dispose();
  }
}

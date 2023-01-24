import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hal_khata/controllers/products_and_category_controller/category_controller.dart';
import 'package:hal_khata/models/products_and_category/product_model.dart';

class StockController extends GetxController {
  // controllers
  TextEditingController sNameController = TextEditingController();
  TextEditingController pNameController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  final CategoryController _categoryController = CategoryController();
  TextEditingController searchController = TextEditingController();

  // variables
  late var selectedCategory = 'Oil'.obs;
  String? newStockCategory = 'Oil';
  final defaultCategory = DropdownMenuItem(child: Text('no_category'.tr));

  // dropdown lists
  final categoris = <DropdownMenuItem>[
    DropdownMenuItem(
      child: Text('Oil'),
      value: 'Oil',
    ),
    DropdownMenuItem(
      child: Text('Rice'),
      value: 'Rice',
    ),
    DropdownMenuItem(
      child: Text('Drinks'),
      value: 'Drinks',
    ),
  ];

  // all products list
  final allProducts = ProductModel(status: 'Ok', products: <Products>[
    Products(
        id: 1,
        category: 'Cocacola Drinks',
        image:
            'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/101422-oil-1665774092.jpg?crop=0.6666666666666666xw:1xh;center,top&resize=1200:*',
        productName: 'Boromia Vineger',
        stock: 500,
        retailPrice: 100,
        wholesalePrice: 95,
        unit: 'pcs'),
    Products(
        id: 2,
        category: 'Oil',
        image:
            'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/101422-oil-1665774092.jpg?crop=0.6666666666666666xw:1xh;center,top&resize=1200:*',
        productName: 'Rice Vat',
        stock: 500,
        retailPrice: 100,
        wholesalePrice: 95,
        unit: 'pcs'),
    Products(
        id: 3,
        category: 'Oil',
        image:
            'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/101422-oil-1665774092.jpg?crop=0.6666666666666666xw:1xh;center,top&resize=1200:*',
        productName: 'Oil',
        stock: 500,
        retailPrice: 100,
        wholesalePrice: 95,
        unit: 'pcs')
  ]);

  // categoriies product list
  List catProducts = <Products>[];

  // build category function for add new stock
  Padding buildCategoryDropDown(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
      child: DropdownButtonFormField(
        dropdownColor: Colors.white,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(12.0)),
              borderSide:
                  BorderSide(width: 1, color: Theme.of(context).primaryColor),
              gapPadding: 2,
            ),
            label: Text(_categoryController.categories.isNotEmpty
                ? 'choose_category'.tr
                : 'no_category'.tr),
            labelStyle: const TextStyle(color: Colors.black)),
        icon: const Icon(
          Icons.arrow_drop_down_circle,
          color: Colors.black,
        ),
        value: newStockCategory,
        items: categoris,
        onChanged: (value) {
          newStockCategory = value;
          update();
        },
      ),
    );
  }

  // build category function for display products as category
  Padding buildCategoryDropDown2(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
      child: DropdownButtonFormField(
        dropdownColor: Colors.white,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(12.0)),
              borderSide:
                  BorderSide(width: 1, color: Theme.of(context).primaryColor),
              gapPadding: 2,
            ),
            label: Text(_categoryController.categories.isNotEmpty
                ? 'choose_category'.tr
                : 'no_category'.tr),
            labelStyle: const TextStyle(color: Colors.black)),
        icon: const Icon(
          Icons.arrow_drop_down_circle,
          color: Colors.black,
        ),
        value: selectedCategory.value,
        items: categoris,
        onChanged: (value) async {
          selectedCategory.value = value;
          print(value);
          catProducts = await addProctsFromCategory(value);
          update();
        },
      ),
    );
  }

  // search functionality
  onSearchChanged(String query) {
    //print(query);
  }

  Future addProctsFromCategory(String value) async {
    if (allProducts.products != null && allProducts.products!.length > 0) {
      // your code
      var item = allProducts.products!
        .where((element) => element.productName == value)
        .toList();
      if (item != null) {
        print(item.asMap());
        print('Item Found');
      } else {
        print("No item found");
      }
      return item;
    } else {
      return print('No Item');
    }
  }

  onSearchSubmit(String query) {}
}

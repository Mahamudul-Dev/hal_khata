import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hal_khata/models/products_and_category/category_model.dart';

class CategoryController extends GetxController {
  List<CategoryModel> categories = <CategoryModel>[
    CategoryModel('Oil', 'ltr'),
    CategoryModel('Drinks', 'ml'),
    CategoryModel('Pen', 'pcs')
  ].obs;

  TextEditingController categoryNameController = TextEditingController();
  final items = <DropdownMenuItem>[
    DropdownMenuItem(value: 'pcs'.tr, child: Text('pcs'.tr)),
    DropdownMenuItem(value: 'pack'.tr, child: Text('pack'.tr)),
    DropdownMenuItem(value: 'dozens'.tr, child: Text('dozens'.tr)),
    DropdownMenuItem(value: 'kg'.tr, child: Text('kg'.tr)),
    DropdownMenuItem(value: 'ltr'.tr, child: Text('ltr'.tr)),
  ];
  String? unit = 'pcs';
  void showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('add_category'.tr),
          content: StatefulBuilder(
            builder: (BuildContext context, setState) {
              return Container(
                padding: const EdgeInsets.all(20.0),
                width: MediaQuery.of(context).size.width / 2,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    TextFormField(
                      controller: categoryNameController,
                      maxLines: 1,
                      minLines: 1,
                      decoration: InputDecoration(
                        label: Text('category_name'.tr),
                      ),
                    ),
                    DropdownButtonFormField(
                      dropdownColor: Colors.white,
                      decoration: InputDecoration(
                          label: Text('select_unit'.tr),
                          labelStyle: const TextStyle(color: Colors.black)),
                      icon: const Icon(
                        Icons.arrow_drop_down_circle,
                        color: Colors.black,
                      ),
                      value: unit,
                      items: items,
                      onChanged: (value) {
                        setState(() {
                          unit = value;
                        });
                      },
                    ),
                  ],
                ),
              );
            },
          ),
          actions: <Widget>[
            ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.red)),
              child: Text('cancel'.tr),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.green)),
              child: Text('add'.tr),
              onPressed: () {
                addCategoryItem(categoryNameController.text, unit.toString());
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  void addCategoryItem(String name, String unit) {
    var model = CategoryModel(name, unit);
    categories.add(model);
    categoryNameController.clear();
    update();
  }
}

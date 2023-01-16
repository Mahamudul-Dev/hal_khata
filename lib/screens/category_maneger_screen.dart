import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hal_khata/controllers/products_and_category_controller/category_controller.dart';

class CategoryManeger extends StatelessWidget {
  const CategoryManeger({super.key});

  @override
  Widget build(BuildContext context) {
    // getx dependency injection
    final CategoryController _controller = Get.put(CategoryController());
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: const Icon(
            Icons.category,
            color: Colors.black,
          ),
          title: const Text(
            'Category Maneger',
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10.0)),
              child: Row(
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll((Colors.greenAccent))),
                      child: const Text(
                        'Add New Category',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
            Container(
              height: 400,
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              color: Colors.grey.shade200,
              child: _controller.categories.isNotEmpty
                  ? ListView.builder(
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: const Icon(
                            Icons.category,
                            color: Colors.black,
                          ),
                          title: Text(_controller.categories[index].name),
                          subtitle: Text(_controller.categories[index].unit),
                        );
                      },
                      itemCount: _controller.categories.length,
                    )
                  : Center(
                      child: Text(
                        'dont_have_category'.tr,
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ),
            )
          ],
        ));
  }
}

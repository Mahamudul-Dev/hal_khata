import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hal_khata/controllers/products_and_category_controller/category_controller.dart';

class CategoryManeger extends StatefulWidget {
  CategoryManeger({super.key});

  @override
  State<CategoryManeger> createState() => _CategoryManegerState();
}

class _CategoryManegerState extends State<CategoryManeger> {
  // getx dependency injection
  final CategoryController _controller = Get.put(CategoryController());

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoryController>(
      init: CategoryController(),
      builder: (controller) => Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: const Icon(
              Icons.category,
              color: Colors.black,
            ),
            title: Text(
              'category_maneger'.tr,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
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
                        onPressed: () {
                          _controller.showAlertDialog(context);
                        },
                        style: const ButtonStyle(
                            padding:
                                MaterialStatePropertyAll(EdgeInsets.all(10.0)),
                            backgroundColor:
                                MaterialStatePropertyAll((Colors.greenAccent))),
                        child: Text(
                          'add_category'.tr,
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
              Container(
                height: 400,
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0))),
                child: controller.categories.isNotEmpty
                    ? Obx(
                        () {
                          return ListView.separated(
                            itemBuilder: (context, index) {
                              return ListTile(
                                leading: const Icon(
                                  Icons.category,
                                  color: Colors.black,
                                ),
                                title: Text(controller.categories[index].name),
                                subtitle: Text(
                                    'unit: ${controller.categories[index].unit}'),
                                trailing: SizedBox(
                                  width: 100,
                                  child: Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.edit,
                                            color: Colors.blue,
                                          )),
                                      const SizedBox(
                                        width: 8.0,
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.delete,
                                            color: Colors.red,
                                          ))
                                    ],
                                  ),
                                ),
                              );
                            },
                            itemCount: controller.categories.length,
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return const Divider(
                                thickness: 1,
                              );
                            },
                          );
                        },
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
          )),
    );
  }
}

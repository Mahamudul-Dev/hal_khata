import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hal_khata/controllers/pos_controller/pos_controller.dart';
import 'package:searchbar_animation/searchbar_animation.dart';

class SaleProductScreen extends StatefulWidget {
  SaleProductScreen({super.key});

  @override
  State<SaleProductScreen> createState() => _SaleProductScreenState();
}

class _SaleProductScreenState extends State<SaleProductScreen> {
  final PosController _controller = Get.put(PosController());
  //final StockController _stockController = Get.put(StockController());

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Expanded(
            child: Scaffold(
                backgroundColor: const Color.fromARGB(255, 235, 235, 235),
                appBar: AppBar(
                  backgroundColor: Colors.black,
                  title: Text('pos_maneger'.tr),
                  actions: [
                    SearchBarAnimation(
                      isOriginalAnimation: false,
                      searchBoxWidth: MediaQuery.of(context).size.width / 3,
                      buttonBorderColour: Colors.black45,
                      onChanged: _controller.onSearchChanged,
                      buttonColour: Colors.white,
                      buttonElevation: 4,
                      onFieldSubmitted: _controller.onSearchSubmit,
                      buttonWidget: const Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      secondaryButtonWidget: const Icon(
                        Icons.close,
                        color: Colors.black,
                      ),
                      textEditingController: _controller.searchTextController,
                      trailingWidget: const Center(
                          child: Icon(Icons.search, color: Colors.black)),
                    )
                  ],
                ),
                body: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'categoties'.tr,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'see_all'.tr,
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          height: 60,
                          color: Colors.white,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    setState(() {
                                      _controller.selectedIndex.value = index;
                                    });
                                  },
                                  child: Obx(() {
                                    return Container(
                                      width: 80,
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 10.0, horizontal: 8.0),
                                      padding: const EdgeInsets.all(10.0),
                                      child: Center(
                                        child: Text(
                                          _controller.categories[index].name,
                                          style: TextStyle(
                                              color: _controller.selectedIndex
                                                          .value ==
                                                      index
                                                  ? Colors.white
                                                  : Colors.black),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color:
                                              _controller.selectedIndex.value ==
                                                      index
                                                  ? Colors.black
                                                  : Color.fromARGB(
                                                      255, 226, 226, 226),
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                    );
                                  }),
                                );
                              },
                              separatorBuilder: (context, index) {
                                return const SizedBox(width: 8.0);
                              },
                              itemCount: _controller.categories.length)),
                    ],
                  ),
                ))),
        Container(
          width: 300,
          color: Colors.black,
        )
      ],
    ));
  }
}

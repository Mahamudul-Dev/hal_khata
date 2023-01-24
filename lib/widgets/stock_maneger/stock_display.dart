import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hal_khata/controllers/stock_controllers/stock_controller.dart';
import 'package:searchbar_animation/searchbar_animation.dart';

class DisplayStock extends StatefulWidget {
  DisplayStock({super.key});

  @override
  State<DisplayStock> createState() => _DisplayStockState();
}

class _DisplayStockState extends State<DisplayStock> {
  final StockController _controller = Get.put(StockController());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 600,
        child: Column(
          children: [
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                height: 80,
                color: Colors.grey.shade200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(
                      () => Text(
                        _controller.selectedCategory.toString(),
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      width: 25.0,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: SearchBarAnimation(
                        isOriginalAnimation: false,
                        buttonBorderColour: Colors.black45,
                        onChanged: _controller.onSearchChanged,
                        onFieldSubmitted: _controller.onSearchSubmit,
                        buttonWidget: const Icon(Icons.search),
                        secondaryButtonWidget: const Icon(Icons.close),
                        textEditingController: _controller.searchController,
                        trailingWidget: const Center(child: Icon(Icons.search)),
                      ),
                    ),
                    Expanded(
                        //width: MediaQuery.of(context).size.width / 2,
                        child: _controller.buildCategoryDropDown2(context)),
                  ],
                )),
            Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: SizedBox(
                          height: 45,
                          width: 45,
                          child: CachedNetworkImage(
                            imageUrl: _controller
                                .allProducts.products![index].image
                                .toString(),
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: Text(_controller
                            .allProducts.products![index].productName
                            .toString()),
                        trailing: Container(
                          height: 35,
                          width: 35,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                          ),
                          child: Center(
                            child: Text(
                              _controller.allProducts.products![index].stock
                                  .toString(),
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Divider(thickness: 0.8);
                    },
                    itemCount: _controller.allProducts.products!.length))
          ],
        ));
  }
}

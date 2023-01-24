import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hal_khata/controllers/stock_controllers/stock_controller.dart';
import 'package:hal_khata/widgets/buttons_and_tabs/custom_text_input.dart';

class AddStockTab extends StatelessWidget {
  AddStockTab({super.key});
  final StockController _controller = Get.put(StockController());
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      padding: const EdgeInsets.all(20.0),
      height: 250,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Color.fromARGB(85, 77, 77, 77),
                blurRadius: 5,
                spreadRadius: 3)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'add_new_stock'.tr,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextInput(
                      textEditController: _controller.sNameController,
                      hintTextString: 'supplier_name'.tr,
                      enableBorder: true,
                      themeColor: Theme.of(context).primaryColor,
                      maxLength: 24,
                      prefixIcon: Icon(Icons.person,
                          color: Theme.of(context).primaryColor),
                      textColor: Colors.black,
                      //errorMessage: 'User name cannot be empty',
                      labelText: 'supplier_name'.tr,
                      inputType: InputType.Default,
                    ),
                    CustomTextInput(
                      textEditController: _controller.pNameController,
                      hintTextString: 'product_name'.tr,
                      enableBorder: true,
                      canEmpty: false,
                      themeColor: Theme.of(context).primaryColor,
                      maxLength: 24,
                      prefixIcon: Icon(Icons.local_grocery_store_outlined,
                          color: Theme.of(context).primaryColor),
                      textColor: Colors.black,
                      //errorMessage: 'User name cannot be empty',
                      labelText: 'product_name'.tr,
                      inputType: InputType.Default,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _controller.buildCategoryDropDown(context),
                    CustomTextInput(
                      textEditController: _controller.quantityController,
                      hintTextString: 'quantity'.tr,
                      enableBorder: true,
                      canEmpty: false,
                      themeColor: Theme.of(context).primaryColor,
                      maxLength: 24,
                      prefixIcon: Icon(Icons.production_quantity_limits,
                          color: Theme.of(context).primaryColor),
                      textColor: Colors.black,
                      //errorMessage: 'User name cannot be empty',
                      labelText: 'quantity'.tr,
                      inputType: InputType.Default,
                    ),
                  ],
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: ElevatedButton.icon(
                onPressed: () => null,
                style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(EdgeInsets.all(15.0)),
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.greenAccent)),
                icon: const Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                label: Text(
                  'add_stock'.tr,
                  style: const TextStyle(color: Colors.black),
                )),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ProductViewWidget extends StatelessWidget {
  const ProductViewWidget(
      {super.key,
      required this.productName,
      required this.productPrice,
      required this.stockQuantity,
      required this.productImage});
  final String productName;
  final String productPrice;
  final String productImage;
  final String stockQuantity;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: const Color.fromARGB(255, 235, 235, 235),
      ),
    );
  }
}

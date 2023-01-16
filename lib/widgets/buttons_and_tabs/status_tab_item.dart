import 'package:flutter/material.dart';

class StatusTabItem extends StatelessWidget {
  const StatusTabItem(
      {super.key,
      required this.tabColor,
      required this.tabTitle,
      required this.child});

  final Color tabColor;
  final String tabTitle;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30.0),
      margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: tabColor),
      child: Column(
        children: [
          Text(
            tabTitle,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.normal),
          ),
          const SizedBox(
            height: 3.0,
          ),
          child
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hal_khata/controllers/page_controllers/view_controller.dart';
import 'package:sidebarx/sidebarx.dart';

class PageManeger extends StatefulWidget {
  const PageManeger({super.key});

  @override
  State<PageManeger> createState() => _PageManegerState();
}

class _PageManegerState extends State<PageManeger> {
  @override
  Widget build(BuildContext context) {
    // dependency injection
    final ViewController controller = Get.put(ViewController());
    return Scaffold(
      body: Row(
        children: [
          SidebarX(
            controller: SidebarXController(selectedIndex: 0),
            items: const [
              SidebarXItem(icon: Icons.home, label: 'Home'),
              SidebarXItem(icon: Icons.search, label: 'Search'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _sideBar() {
    return SidebarX(
      controller: SidebarXController(selectedIndex: 0),
      items: const [
        SidebarXItem(icon: Icons.home, label: 'Home'),
        SidebarXItem(icon: Icons.search, label: 'Search'),
      ],
    );
  }
}

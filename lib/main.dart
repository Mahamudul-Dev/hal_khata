import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hal_khata/translations/languages.dart';
import 'package:hal_khata/view_screen_container.dart';
import 'package:sidebarx/sidebarx.dart';

import 'widgets/sidebar/sidebar.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final _controller = SidebarXController(selectedIndex: 0, extended: true);
  final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Hal Khata',
      debugShowCheckedModeBanner: false,
      translations: Languages(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      theme: ThemeData(
        primaryColor: Colors.black,
        canvasColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          headlineSmall: TextStyle(
            color: Colors.white,
            fontSize: 46,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      home: Builder(
        builder: (context) {
          final isSmallScreen = MediaQuery.of(context).size.width < 600;
          return Scaffold(
            key: _key,
            appBar: isSmallScreen
                ? AppBar(
                    backgroundColor: Colors.black,
                    title: const Text('Hal Khata'),
                    leading: IconButton(
                      onPressed: () {
                        // if (!Platform.isAndroid && !Platform.isIOS) {
                        //   _controller.setExtended(true);
                        // }
                        _key.currentState?.openDrawer();
                      },
                      icon: const Icon(Icons.menu),
                    ),
                  )
                : null,
            drawer: SideBar(controller: _controller),
            body: Row(
              children: [
                if (!isSmallScreen) SideBar(controller: _controller),
                Expanded(
                  child: Center(
                    child: ViewScreenContainer(
                      controller: _controller,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

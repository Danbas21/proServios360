import 'package:flutter/material.dart';
import 'package:proservicios/pages/banner.dart';
import 'package:proservicios/pages/footer.dart';
import 'package:proservicios/pages/mid_bottom_page.dart';
import 'package:proservicios/pages/mid_page.dart';
import 'package:proservicios/utils/app_bar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        appBar: BarNaviv(),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: height / 1.5,
            child: const WidgetBanner(),
          ),
          Container(
            width: width,
            height: height / 1.8,
            decoration: const BoxDecoration(
              color: Color.fromARGB(25, 26, 26, 26),
            ),
            child: const MidPage(),
          ),
          Container(
            width: width,
            height: height / 1.8,
            child: const MidBottom(),
          ),
          Container(
            height: height / 4,
            color: Colors.grey[800],
            child: const Center(child: FooterPage()),
          ),
        ],
      ),
    );
  }
}

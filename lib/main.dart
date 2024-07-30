import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:proservicios/utils/images_carge.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Carrusel Banner Example')),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<String> imgList = [
    ImagesCarge.pro1,
    ImagesCarge.pro2,
    ImagesCarge.pro3,
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: height,
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: height,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      enlargeCenterPage: true,
                      viewportFraction: 1.0,
                    ),
                    items: imgList
                        .map((item) => Container(
                              child: Center(
                                child: Image.asset(item,
                                    fit: BoxFit.fill, width: width),
                              ),
                            ))
                        .toList(),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.black54,
                    child: Text(
                      'Banner Text',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Aquí puedes agregar más widgets
          Container(
            height: 800,
            color: Colors.blue,
            child: Center(child: Text('Contenido adicional')),
          ),
          Container(
            height: 800,
            color: Colors.green,
            child: Center(child: Text('Más contenido')),
          ),
          Container(
            height: 800,
            color: Colors.orange,
            child: Center(child: Text('Aún más contenido')),
          ),
        ],
      ),
    );
  }
}

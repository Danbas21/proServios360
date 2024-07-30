import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../utils/images_carge.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class WidgetBanner extends StatelessWidget {
  const WidgetBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final height = constraints.maxHeight;

        return Stack(
          children: [
            SizedBox(
              width: width,
              height: height / 1.8,
              child: _buildBanner(width, height),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: width / 2,
                height: height / 1.8,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(200, 26, 26, 26),
                ),
              ),
            ),
            Positioned(
              top: 100,
              left: 50,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 11,
                      height: 11,
                      decoration: const BoxDecoration(color: Color(0xFF40DDB6)),
                    ),
                  ),
                  const Text(
                    'Bienvenido a ProServicios 360',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Inter',
                      height: 0.08,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 150,
              left: 50,
              child: SizedBox(
                width: width / 4,
                child: const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'El servicio que su ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 65,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'línea blanca ',
                        style: TextStyle(
                          color: Color(0xFF45EFD0),
                          fontSize: 60,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'necesita',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 60,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 400,
              left: 50,
              child: SizedBox(
                width: width / 2,
                child: const Text(
                  'Servicio profesional de mantenimiento y reparación de línea blanca',
                  style: TextStyle(
                    color: Color(0xFFB8B8B8),
                    fontSize: 18,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
            ),
            Positioned(
              top: 500,
              left: 50,
              child: TextButton(
                onPressed: () {
                  // Navegación a la página de consulta
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(169, 57, 231, 222),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    'Obtén una Consulta',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

final List<String> imgList = [
  'assets/pro1.png',
  'assets/pro2.png',
  'assets/pro3.png',
];

Widget _buildBanner(double maxWidth, double maxHeight) {
  return imgList.isNotEmpty
      ? CarouselSlider(
          options: CarouselOptions(
            height: maxHeight / 1.8,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            enlargeCenterPage: true,
            viewportFraction: 1.0,
          ),
          items: imgList.map((item) {
            return Center(
              child: Image.asset(item, fit: BoxFit.cover, width: maxWidth),
            );
          }).toList(),
        )
      : Container(
          height: maxHeight / 1.8,
          color: Colors.grey,
          child: const Center(child: Text('No images available')),
        );
}

// Widget _buildIconsSection() {
//   return const Padding(
//     padding: EdgeInsets.all(16.0),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: [
//         Icon(FontAwesomeIcons.html5, size: 50),
//         Icon(FontAwesomeIcons.css3Alt, size: 50),
//         Icon(FontAwesomeIcons.js, size: 50),
//         Icon(FontAwesomeIcons.python, size: 50),
//       ],
//     ),
//   );
// }

// Widget _buildContactForm() {
//   return Padding(
//     padding: const EdgeInsets.all(16.0),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Text("Contactamos",
//             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
//         const SizedBox(height: 8),
//         const TextField(
//           decoration: InputDecoration(labelText: "Nombre"),
//         ),
//         const SizedBox(height: 8),
//         const TextField(
//           decoration: InputDecoration(labelText: "Email"),
//         ),
//         const SizedBox(height: 8),
//         const TextField(
//           decoration: InputDecoration(labelText: "Mensaje"),
//           maxLines: 4,
//         ),
//         const SizedBox(height: 16),
//         ElevatedButton(
//           onPressed: () {},
//           child: const Text("Enviar"),
//         ),
//       ],
//     ),
//   );
// }

// Widget _buildFooter() {
//   return Container(
//     color: Colors.black,
//     padding: const EdgeInsets.all(16.0),
//     child: const Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Icon(FontAwesomeIcons.facebook, color: Colors.white),
//         SizedBox(width: 16),
//         Icon(FontAwesomeIcons.twitter, color: Colors.white),
//         SizedBox(width: 16),
//         Icon(FontAwesomeIcons.instagram, color: Colors.white),
//       ],
//     ),
//   );
// }
//   Positioned(
//             top: 150,
//             left: 0,
//             child: Container(
//               width: width,
//               height: height,
//               decoration: const BoxDecoration(
//                 color: Color.fromARGB(200, 26, 26, 26),
//               ),
//             )),
//         Positioned(
//           top: height / 2,
//           left: 0,
//           right: 0,
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 _buildIconsSection(),
//                 _buildContactForm(),
//                 _buildFooter(),
//               ],
//             ),
//           ),
//         ),
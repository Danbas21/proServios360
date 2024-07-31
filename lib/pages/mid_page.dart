import 'package:flutter/material.dart';
import '../utils/images_carge.dart';

class MidPage extends StatelessWidget {
  const MidPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final List<Map<String, String>> paragraphs = [
      {
        'header': "Bienvenido a ProServicios 360",
        'paragraph':
            "Confié en los expertos: más de 10 años de experiencia en mantenimiento y reparación de línea blanca. Tu hogar en manos seguras: garantía de calidad en cada reparación.\n\nCada hogar es único: servicio personalizado para tus electrodomésticos.Nos adaptamos a tus necesidades: mantenimiento a tu medida."
      }
    ];

    return Stack(
      children: [
        Positioned(
          top: 25,
          left: 330,
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage(ImagesCarge.pro5),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
        const Positioned(
          bottom: 60,
          left: 250,
          child: SizedBox(
            width: 450,
            height: 200,
            child: Text(
              "Servicio a domicilio para\ntu mayor comodidad.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            width: width / 2,
            height: height / 1.8,
            decoration: BoxDecoration(color: Colors.blueGrey[50]),
            child: Stack(children: [
              Positioned(
                top: 60,
                left: 10,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 11,
                        height: 11,
                        decoration:
                            const BoxDecoration(color: Color(0xFF40DDB6)),
                      ),
                    ),
                    const Text(
                      'Bienvenido a ProServicios 360',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 180,
                left: 15,
                child: SizedBox(
                  width: width / 3,
                  child: Text(
                    paragraphs[0]['paragraph']!,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Inter',
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}

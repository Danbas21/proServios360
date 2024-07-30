import 'package:flutter/material.dart';
import '../utils/images_carge.dart';

class MidPage extends StatelessWidget {
  const MidPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: width / 2.5,
              height: height / 1.8,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImagesCarge.pro5),
                  fit: BoxFit.fill,
                ),
              ),
            ))
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:proservicios/utils/images_carge.dart';

class MidBottom extends StatelessWidget {
  const MidBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 60,
          left: 750,
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
                'Somos Expertos en',
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
        const Positioned(
          top: 90,
          left: 700,
          child: Text(
            'Mantenimiento y Reparación',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 30,
              fontFamily: 'Inter',
            ),
          ),
        ),
        Positioned(
          top: 150,
          left: 30,
          child: Container(
            width: MediaQuery.of(context).size.width / 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey[200],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 250,
                    height: 100,
                    child: Text("Lavadoras\ndomesticas\ne industriales",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.cyan[500],
                      borderRadius: BorderRadius.circular(200),
                    ),
                    child: Center(
                      child: FractionallySizedBox(
                        widthFactor: 0.5,
                        heightFactor: 0.5,
                        child: Image.asset(
                          ImagesCarge.pro7,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 150,
          left: 650,
          child: Container(
            width: MediaQuery.of(context).size.width / 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey[200],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 250,
                    height: 100,
                    child: Text("Refrigeradores\ndomesticas\ne industriales",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.cyan[500],
                      borderRadius: BorderRadius.circular(200),
                    ),
                    child: Center(
                      child: FractionallySizedBox(
                        widthFactor: 0.5,
                        heightFactor: 0.5,
                        child: Image.asset(
                          ImagesCarge.pro8,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 150,
          right: 150,
          child: Container(
            width: MediaQuery.of(context).size.width / 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey[200],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 250,
                    height: 100,
                    child: Text("Splits y aires\nacondicionados",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.cyan[500],
                      borderRadius: BorderRadius.circular(200),
                    ),
                    child: Center(
                      child: FractionallySizedBox(
                        widthFactor: 0.5,
                        heightFactor: 0.5,
                        child: Image.asset(
                          ImagesCarge.pro9,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 50,
          left: 30,
          child: Image.asset(ImagesCarge.pro6,
              fit: BoxFit.fitWidth, width: MediaQuery.of(context).size.width),
        )
      ],
    );
  }
}

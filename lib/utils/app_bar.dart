import 'package:flutter/material.dart';
import 'package:proservicios/utils/screen_utils.dart';

class BarNaviv extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Key? key;

  const BarNaviv({this.key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    double multiplier = ResponsiveUtil.getMultiplier(context);
    return AppBar(
      automaticallyImplyLeading: true,
      backgroundColor: WidgetStateColor.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: const Radius.circular(20) * multiplier,
          bottomRight: const Radius.circular(20) * multiplier,
        ),
      ),
      elevation: 0.2,
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Scaffold(
                    body: SingleChildScrollView(
                  child: Column(
                    children: [
                      // HomePage(),
                      // LandingPage2(),
                      // LadingPage3(),
                    ],
                  ),
                )),
              ),
            );
          },
          child: Text(
            'Home',
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 20 * multiplier,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     // builder: (context) => const WhatIsPage(),
            //   ),
            // );
          },
          child: Text(
            'Nosotros',
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 20 * multiplier,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => const ListInvites(),
            //   ),
            // );
          },
          child: Text(
            'Contacto',
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 20 * multiplier,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => const SchedulePage(),
            //   ),
            // );
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color.fromARGB(155, 57, 83, 231),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              'Obtén una Consulta',
              style: TextStyle(
                color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 20 * multiplier,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
            ),
          ),
        ),
      ],
    );
  }
}

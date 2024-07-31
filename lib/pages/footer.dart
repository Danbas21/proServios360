import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:proservicios/utils/images_carge.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterPage extends StatelessWidget {
  const FooterPage({super.key});

  @override
  Widget build(BuildContext context) {
    String phoneNumber = '525541821184';

    void launchWhatsApp() async {
      final whatsappUrl =
          Uri.parse("https://api.whatsapp.com///send?phone=$phoneNumber");
      if (await canLaunchUrl(whatsappUrl)) {
        await launchUrl(whatsappUrl);
      } else {}
    }

    return Stack(
      children: [
        Positioned(
          top: 70,
          left: 0,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 248, 248),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: FractionallySizedBox(
                      widthFactor: 0.9,
                      heightFactor: 0.9,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          ImagesCarge.pro4,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
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
                    const Text.rich(TextSpan(children: [
                      TextSpan(
                        text: 'ProServicios ',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 25,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: '360',
                        style: TextStyle(
                          color: Color(0xFF45EFD0),
                          fontSize: 25,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ])),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 85,
          right: 50,
          child: Container(
            width: MediaQuery.of(context).size.width / 3,
            color: Colors.grey[800],
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(FontAwesomeIcons.phone, color: Colors.white),
                    ),
                    Text(
                      '(55) 4182-1184',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(width: 16),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(FontAwesomeIcons.whatsapp,
                          color: Colors.white),
                      onPressed: launchWhatsApp,
                    ),
                    GestureDetector(
                      onTap: launchWhatsApp,
                      child: const Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Text(
                          'WhatsApp',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 16),
                const Row(
                  children: [
                    Icon(FontAwesomeIcons.map, color: Colors.white),
                    Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Text(
                        '  Estamos',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:app/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Startscreen extends StatefulWidget {
  const Startscreen({super.key});
  @override
  StartscreenState createState() => StartscreenState();
}

class StartscreenState extends State<Startscreen> {
  double imageOpacity = 0.0;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        imageOpacity = 1.0;
      });
    });

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          double imageHeight = constraints.maxWidth * 0.55;
          double fontSizeTitle = constraints.maxWidth * 0.15;
          double fontSizeSubtitle = constraints.maxWidth * 0.07;

          return Container(
            color: Colors.black87,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      AnimatedOpacity(
                        opacity: imageOpacity,
                        duration:
                            const Duration(seconds: 1), // Animation duration
                        child: Image.asset(
                          'assets/images/chef.png',
                          height: imageHeight,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'D',
                      style: GoogleFonts.dancingScript(
                        color: Colors.orange,
                        fontWeight: FontWeight.w800,
                        fontSize: fontSizeTitle + 15,
                      ),
                    ),
                    Text(
                      'ishshare',
                      style: GoogleFonts.roboto(
                        color: Colors.orange,
                        fontWeight: FontWeight.w800,
                        fontSize: fontSizeTitle,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Dinner at your table',
                  style: GoogleFonts.dancingScript(
                    color: Colors.orange,
                    fontWeight: FontWeight.w800,
                    fontSize: fontSizeSubtitle,
                  ),
                ),
                const Spacer(),
              ],
            ),
          );
        },
      ),
    );
  }
}

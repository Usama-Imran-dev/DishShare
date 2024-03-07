import 'package:app/home_screen.dart';
import 'package:app/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dart:ui';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/meal.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
              child: Container(
                color: Colors.black.withOpacity(0.8), // Adjust opacity here
              ),
            ),
          ),
          Center(
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                final bool isSmallScreen =
                    MediaQuery.of(context).size.width < 600;
                final bool isLargeScreen =
                    MediaQuery.of(context).size.width > 1000;

                final TextStyle titleStyle = GoogleFonts.roboto(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                );

                final TextStyle sloganStyle = GoogleFonts.roboto(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                  fontSize: isSmallScreen ? 16 : 18,
                );

                return SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(isSmallScreen ? 0 : 6.0),
                        child: Image.asset(
                          'assets/images/meal.jpg',
                          width:
                              isSmallScreen ? 320 : (isLargeScreen ? 520 : 240),
                          height:
                              isSmallScreen ? 220 : (isLargeScreen ? 288 : 228),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'D',
                            style: GoogleFonts.dancingScript(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: isSmallScreen ? 60 : 90,
                            ),
                          ),
                          Text(
                            'ishshare',
                            style: titleStyle.copyWith(
                              fontSize: isSmallScreen ? 40 : 56,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Cook, Share, Delight', style: sloganStyle),
                          Padding(
                            padding:
                                EdgeInsets.all(isSmallScreen ? 18.0 : 25.0),
                            child: TextFormField(
                              maxLength: 20,
                              decoration: const InputDecoration(
                                labelText: 'Enter your Email',
                                hintText: 'Enter your Email',
                                labelStyle: TextStyle(color: Colors.orange),
                                suffixIcon: Icon(Icons.email),
                              ),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: isSmallScreen ? 13 : 15,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.all(isSmallScreen ? 18.0 : 25.0),
                            child: TextFormField(
                              maxLength: 15,
                              decoration: const InputDecoration(
                                labelText: 'Enter your Password',
                                hintText: 'Enter your Password',
                                labelStyle: TextStyle(color: Colors.orange),
                                suffixIcon: Icon(Icons.password),
                              ),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: isSmallScreen ? 13 : 15,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: isSmallScreen ? 20 : 30,
                          ),
                          SizedBox(
                            height: 75,
                            width: isSmallScreen ? 270 : 300,
                            child: Row(
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const Signup(),
                                        ),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.orange,
                                      foregroundColor:
                                          const Color.fromARGB(255, 44, 43, 43),
                                    ),
                                    child: Text(
                                      'Sign up',
                                      style: GoogleFonts.roboto(
                                        fontSize: isSmallScreen ? 22 : 25,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                    width:
                                        10), // Adjust the space between buttons
                                IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const HomeScreen(),
                                      ),
                                    );
                                  },
                                  icon: const Icon(Icons.arrow_forward),
                                  color: Colors.orange,
                                  iconSize: 40,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

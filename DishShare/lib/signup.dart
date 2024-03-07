import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  SignupState createState() => SignupState();
}

class SignupState extends State<Signup> {
  final List<String> values = [
    'Sign in',
    'Continue with Google',
    'Already have an account?',
  ];
  bool showChefImage = false;

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 1), () {
      setState(() {
        showChefImage = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        iconTheme: const IconThemeData(color: Colors.white),
        title: RichText(
          text: TextSpan(
            style: GoogleFonts.dancingScript(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: MediaQuery.of(context).size.width < 600 ? 40 : 60,
            ),
            children: [
              const TextSpan(
                text: 'D', // Capital 'D'
              ),
              TextSpan(
                text: 'ishshare', // Rest in lowercase
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.width < 600 ? 20 : 30,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Container(
            width: 40,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.orange,
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.black87,
        child: Center(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width < 600
                                ? 20.0
                                : 68.0),
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.9),
                                blurRadius: 80,
                                offset: const Offset(2, 2),
                              ),
                            ],
                          ),
                          child: Text(
                            'Signup Page',
                            style: GoogleFonts.dancingScript(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          AnimatedOpacity(
                            opacity: showChefImage ? 1.0 : 0.0,
                            duration: const Duration(seconds: 1),
                            curve: Curves.easeIn,
                            child: SizedBox(
                              height: 220,
                              child: Image.asset(
                                'assets/images/chef.png',
                                width: 220,
                                height: 120,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      textInputField('Enter your Email', Icons.email, 20),
                      const SizedBox(height: 10),
                      textInputField('Enter your Password', Icons.password, 15),
                      const SizedBox(height: 10),
                      textInputField(
                          'Confirm your Password', Icons.confirmation_num, 15),
                      const SizedBox(height: 25),
                      Column(
                        children: values
                            .asMap()
                            .entries
                            .map(
                              (e) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10.0),
                                child: button(
                                  e.value,
                                  showIcon: e.key > 1,
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget textInputField(String labelText, IconData icon, maxlength) {
    return TextFormField(
      maxLength: maxlength,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: labelText,
        labelStyle: const TextStyle(color: Colors.orange),
        suffixIcon: Icon(icon),
      ),
      style: GoogleFonts.dancingScript(
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.w200,
      ),
    );
  }

  Widget button(String value, {bool showIcon = false}) {
    return SizedBox(
      height: 50,
      width: 350,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: Colors.orange,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (showIcon) const Icon(Icons.account_box_outlined),
                    if (value == 'Continue with Google')
                      Align(
                        alignment: Alignment.centerRight,
                        child: Image.asset(
                          'assets/images/google.png',
                          height: 30,
                          width: 30,
                        ),
                      ),
                    const SizedBox(width: 10),
                    Text(
                      value,
                      style: GoogleFonts.roboto(
                        color: const Color.fromARGB(255, 44, 43, 43),
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

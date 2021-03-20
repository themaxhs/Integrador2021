import 'package:apirest/components/rounded_button.dart';
import 'package:apirest/constants.dart';
import 'package:apirest/screens/Login/login_screen.dart';
import 'package:apirest/screens/Login/login_screen_profesor.dart';
import 'package:apirest/screens/components/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "BIENVENIDO, SELECCIONA TU ROL",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kColorPrimario),
            ),
            SizedBox(height: size.height * 0.05),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "TUTOR",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "PROFESOR",
              color: kColorLigero,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreenProfesor();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
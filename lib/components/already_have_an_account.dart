import 'package:apirest/constants.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    Key key, 
    this.login = true, 
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
        login ? "Aun no tienes una cuenta? " : "Ya tienes una cuenta?",
        style: TextStyle(
          color: kColorPrimario),
          ),
          GestureDetector(
            onTap: press,
            child: Text(
              login ? "Registrarse" : "Iniciar Sesión",
              style: TextStyle(
                color: kColorPrimario,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
      ],
    );
  }
}
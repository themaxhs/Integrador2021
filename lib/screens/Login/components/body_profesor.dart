import 'package:apirest/components/already_have_an_account.dart';
import 'package:apirest/components/rounded_button.dart';
import 'package:apirest/components/rounded_input_field.dart';
import 'package:apirest/components/rounded_password_field.dart';
import 'package:apirest/components/text_field_container.dart';
import 'package:apirest/constants.dart';
import 'package:apirest/screens/Login/components/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BodyProfesor extends StatelessWidget {
  const BodyProfesor({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("BIENVENIDO PROFESOR", 
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kColorPrimario),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          SvgPicture.asset("assets/icons/login.svg",
          height: size.height * 0.35,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          RoundedInputField(
            hintText: "Usuario",
            onChanged: (value){},
          ),
          RoundedPasswordField(
            onChanged: (value){},
          ),
          RoundedButton(
            text: "INICIAR SESIÓN",
            press: () {},
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          AlreadyHaveAnAccountCheck(
            press: () {},
          ),
        ],
      ),
    );
  }
}
import 'package:apirest/components/text_field_container.dart';
import 'package:apirest/constants.dart';
import 'package:flutter/material.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key, 
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: "Contraseña",
          icon: Icon(
            Icons.lock,
            color: kColorPrimario,
            ),
            suffixIcon: Icon(
              Icons.visibility,
              color: kColorPrimario,
            ),
            border: InputBorder.none,
        ),
      ),
    );
  }
}
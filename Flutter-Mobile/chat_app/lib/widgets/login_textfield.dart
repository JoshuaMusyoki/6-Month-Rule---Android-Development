import 'package:chat_app/utils/text_styles.dart';
import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final FormFieldValidator<String>? validator;
  final bool hasAsterics;
  const LoginTextField({
    Key? key,
    required this.controller,
    this.validator,
    required this.hintText,
    this.hasAsterics = false,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
     obscureText: hasAsterics,
      validator: (value) {
        if(validator!=null){
          return validator!(value);
        }
        return null;
      },
      controller: controller,
      decoration: InputDecoration(
          hintText: 'Enter Your Username',
          hintStyle: ThemeTextStyle.loginTextFieldStyle,
          border: OutlineInputBorder()
      ),

    );
  }
}

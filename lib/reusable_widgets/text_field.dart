import 'package:flutter/material.dart';

TextField logintextfield(String text,bool isPasswordType,
    TextEditingController controller){
  return TextField(
    textAlign: TextAlign.justify,
    controller: controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    cursorColor: Colors.black,
    textAlignVertical: TextAlignVertical.bottom,
    style: TextStyle(color: Colors.black,),
    decoration: InputDecoration(
      labelText: text,
      labelStyle: TextStyle(
        color: Colors.black,
        fontSize: 14,
        ),
      fillColor: Colors.white,
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      ),
    keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
  );
}
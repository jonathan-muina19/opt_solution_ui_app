import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {

  final  prefixIcon;
  final Widget? suffixIcon;
  final String labelText;
  final  controller ;
  final bool obscureText;

  const MyTextfield({
    super.key,
    required this.prefixIcon,
    required this.suffixIcon,
    required this.labelText,
    required this.controller,
    required this.obscureText
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: TextField(
        obscureText: obscureText,
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: prefixIcon ,
          suffixIcon: suffixIcon,
          fillColor: Colors.blue.shade50,
          filled: true,
          enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.white)
          ),
          focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.blue.shade400)
          ),
          label: Text(labelText),
          labelStyle: TextStyle(
            fontSize: 12,
            color: Colors.black
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          border: OutlineInputBorder(
          )
        ),
      ),
    );
  }
}
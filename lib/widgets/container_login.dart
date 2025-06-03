import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ContainerLogin extends StatelessWidget {

  // ignore: prefer_typing_uninitialized_variables
  final  Color? colorBorder;
  final Color? colorText;
  final Color? backgroundContainer;
  final Icon? icon;
  final String textButton;
  Function()? onTap;
  
  ContainerLogin({
    super.key,
    required this.colorBorder,
    required this.backgroundContainer,
    required this.icon ,
    required this.textButton,
    required this.colorText,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(7),
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: backgroundContainer,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color:  colorBorder ?? Colors.transparent
            )
            
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (icon != null) Icon(icon!.icon, color: colorText), // Affiche l'icône seulement si non null
                Text(
                  textButton,
                  style: TextStyle(
                    color: colorText ?? Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ),
      ),
    );
  }
}
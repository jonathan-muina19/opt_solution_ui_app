import 'package:flutter/material.dart';

class ContainerSingup extends StatelessWidget {
  final Icon? icon;
  final String title;

  const ContainerSingup({
    super.key,
    required this.icon,
    required this.title
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(8),
      height: 90,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.blue.shade700,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) Icon(icon!.icon, color: Colors.white),
            Text(title, style: TextStyle(
              fontSize: 12,
              color: Colors.white,
              fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
      )
    );
  }
}
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class SplashScreen extends StatefulWidget {
  
  const SplashScreen({
    super.key,
  });


  @override
  State<SplashScreen> createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {
  @override
   void initState(){
    super.initState();
    Timer(Duration(seconds: 3),(){
      context.go('/plateforme_ui');
    });
  }


  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/opt logo.png', height: 170)
          ],
        ),
      ),
    );
  }
}

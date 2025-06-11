import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:opt_solution_ui/pages/bnn_esu.dart';
import 'package:opt_solution_ui/pages/opt_screen.dart';
import 'package:opt_solution_ui/pages/plateforme_ui.dart';
import 'package:opt_solution_ui/pages/signup.dart';
import 'package:opt_solution_ui/pages/splash_screen.dart';


void main() {
  runApp(MyApp());
}


final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen()
    ),
    GoRoute(
      path: '/opt_solution',
      builder: (context, state) => OptScreen()
    ),
    GoRoute(
      path: '/plateforme_ui',
      builder: (context, state) => const PlateformeUi()
    ),
    GoRoute(
      path: '/bnn_esu',
      builder: (context, state) =>  BnnEsu()
    ),
    GoRoute(
      path: '/tableau_bord',
      builder: (context, state) =>  PlateformeUi()
    ),
    GoRoute(
      path: '/signup',
      builder: (context, state) =>  Signup()
    ),     
  ]
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.white
          )
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:opt_solution_ui/pages/opt_screen.dart';
import 'package:opt_solution_ui/pages/plateforme_ui.dart';
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
    )
    
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

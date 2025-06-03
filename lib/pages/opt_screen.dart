import 'package:flutter/material.dart';

class OptScreen extends StatelessWidget {
  const OptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.refresh_rounded)
          )
        ],
        title: Text('Etablissements', style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20
          ),
        ),
        backgroundColor: Colors.blue.shade700
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('Bientot disponible'),
          )
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:opt_solution_ui/widgets/container_singup.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(height: 70,),
                  Text('Creez votre compte', style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                    ),
                  ),
                  Image.asset('assets/images/signup.png', height: 300),
                  Center(
                    child: Column(
                      children: [
                        Text('Bienvenue sur la BNN', style: TextStyle(
                          color: Colors.grey
                          ),
                        ),
                         Text('veuillez creer un compte pour profiter des toutes les ', style: TextStyle(
                          color: Colors.grey
                          ),
                        ),
                        Text('fonctionalites de la plateforme, choisissez le type ', style: TextStyle(
                          color: Colors.grey
                          ),
                        ),
                        Text('de compte que vous preferez avoir...', style: TextStyle(
                          color: Colors.grey
                          ),
                        ),
                        SizedBox(height: 40),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              ContainerSingup(
                                icon: Icon(Icons.school_outlined),
                                title: 'Etudiant',
                              ),
                              ContainerSingup(
                                icon: Icon(Icons.supervisor_account_outlined),
                                title: 'Personnel',
                              ),
                              ContainerSingup(
                                icon: Icon(Icons.manage_search_rounded), 
                                title: 'Chercheur'
                              )
                              
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}
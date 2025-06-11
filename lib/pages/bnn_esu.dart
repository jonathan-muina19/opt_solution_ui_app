import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:opt_solution_ui/widgets/container_login.dart';
import 'package:opt_solution_ui/widgets/my_textfield.dart';

// ignore: must_be_immutable
class BnnEsu extends StatelessWidget {
  TextEditingController controllerUsername = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  BnnEsu({super.key});

  

  @override
  Widget build(BuildContext context) {

     void login(){
      
    }
  
    return Scaffold(
      backgroundColor: Colors.blue.shade700,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  Image.asset('assets/images/logo.png', height: 100),
                  Text('Connectez-vous', style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold

                    ),
                  ),
                  SingleChildScrollView(
                    child: Container(          
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.all(20), // Réduit le padding pour éviter que tout soit trop serré
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch, // Étire horizontalement
                        mainAxisSize: MainAxisSize.min, // Laisse la colonne prendre la taille de ses enfants
                        children: [
                          MyTextfield(
                            obscureText: false,
                            prefixIcon: Icon(Icons.person, color: Colors.blue), 
                            suffixIcon: null, 
                            labelText: "Nom d'utilisateur", 
                            controller: controllerUsername
                          ),
                          MyTextfield(
                            obscureText: true,
                            prefixIcon: Icon(Icons.lock, color: Colors.blue), 
                            suffixIcon: IconButton(
                              onPressed: (){}, 
                              icon: Icon(Icons.visibility_off)
                            ), 
                            labelText: "Mot de passe", 
                            controller: controllerPassword
                          ),
                          ContainerLogin(
                            onTap: login,
                            colorText: Colors.white,
                            textButton: 'Connexion',
                            colorBorder: null, 
                            backgroundContainer: Colors.blue, 
                            icon: Icon(Icons.file_download_outlined)
                          ),
                          ContainerLogin(
                            onTap: () => context.go('/tableau_bord'),
                            colorText: Colors.blue,
                            textButton: 'Tableau de Bord',
                            colorBorder: Colors.blue, 
                            backgroundContainer: Colors.white, 
                            icon: Icon(Icons.dashboard_outlined,)
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                child: Text('Mot de passe oublie?', 
                                style: TextStyle(
                                color: Colors.blue.shade800,
                                fontSize: 12,
                                fontWeight: FontWeight.bold
                                  ),
                                ),
                                onPressed: (){},                               
                              ),
                              
                              TextButton(
                                child: Text('Creer votre compte', 
                                style: TextStyle(
                                color: Colors.blue.shade800,
                                fontSize: 12,
                                fontWeight: FontWeight.bold
                                  ),
                                ),
                                onPressed: (){
                                  context.push('/signup');
                                },                               
                              ),
                            ],
                          )
                          
                        ],
                      ),
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
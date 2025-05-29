import 'package:flutter/material.dart';
import 'package:opt_solution_ui/widgets/container_plateform.dart';

class PlateformeUi extends StatelessWidget {
  const PlateformeUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset('assets/images/opt logo.png', height: 60),
                    SizedBox(width: 250),
                    IconButton(
                        onPressed: (){}, 
                        icon: Icon(Icons.help_outline, size: 30,)
                    )
                  ],
                ),
              ),
               ContainerPlateform(
                 logoDomain: 'assets/images/education.gif',
                 titleDomain: 'BNN-ESU',
                 subtitleDomain: 'Livres, Videos, audios et images',
                 onTap: (){},
              ),
              ContainerPlateform(
                logoDomain: 'assets/images/assistant-ia.gif',
                titleDomain: 'ROBOT Inteligence Artificielle',
                subtitleDomain: 'Assistant Moderne de la BNN',
                onTap: (){},
              ),
              ContainerPlateform(
                  titleDomain: 'OPT SOLUTION',
                  subtitleDomain: 'Generer les bons de paiements',
                  logoDomain: 'assets/images/argent.gif',
                  onTap: (){},
              ),
              SizedBox(height: 350),
              Text('©Powered by Jordan-Muina')
            ],
          ),
        ),
      ),
    );
  }
}

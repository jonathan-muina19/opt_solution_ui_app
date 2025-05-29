import 'package:flutter/material.dart';

class ContainerPlateform extends StatelessWidget {

  final String titleDomain;
  final String subtitleDomain;
  final String logoDomain;
  final Function()? onTap;

  const ContainerPlateform({
    super.key,
    required this.titleDomain,
    required this.subtitleDomain,
    required this.logoDomain,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.blue.shade700,
          borderRadius: BorderRadius.circular(15)
        ),
        child: Row(
          children: [
            SizedBox(
              height: 70,
              width: 70,
              child : DecoratedBox(
                decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18)
              ),
              child: Center(
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Image.asset(
                    logoDomain, height: 60,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            )
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(titleDomain, style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 0),
                Text(subtitleDomain,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.normal
                ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

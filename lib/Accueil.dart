import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';

import 'Widgets.dart';

class Accueil extends StatefulWidget {
  const Accueil({super.key});

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: naviguer(),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                Container(
                  width: double.infinity,
                  child: Image.asset(
                    "assets/images/blackAdamPoster.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Image.asset(
                  "assets/images/logo-2.png",
                  scale: 15,
                ),
                Padding(
                  padding:
                       EdgeInsets.only(top: 400, left: 150, right: 150),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, "/Details");
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.play_arrow_rounded,
                            color: Colors.black,
                          ),
                          Text(
                            "Lire",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black),
                          )
                        ],
                      )),
                ),Row(
                  children: [
                     Padding(
                       padding:  EdgeInsets.only(top: 80),
                       child: Image.asset(
                                       "assets/images/logo-2.png",
                                       scale: 10,
                                     ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(top:85),
                       child: Text("Series",style:TextStyle(
                        color: Colors.white,
                        fontSize: 60
                       )),
                     )
                  ],
                )
              ]),
              carousselTitle("Tendances actuelles", 235),
              caroussel(200),
              carousselTitle("Au cinéma", 295),
              caroussel(400),
              carousselTitle("Ils arrivent nientôt", 235),
              caroussel(200),
              carousselTitle("Comédie", 315),
              caroussel(200),
            ],
          ),
        ));
  }
}

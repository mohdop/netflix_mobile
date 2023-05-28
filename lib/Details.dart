import 'package:flutter/material.dart';

import 'Widgets.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
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
                    "assets/images/secondPoster.png",
                    fit: BoxFit.fill,
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/Accueil");
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 65,
                      color: Colors.white,
                    )),
                    Padding(padding: EdgeInsets.only(top:200,left: 15),
                      child: Text("Black Adam",style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w900
                      ),),
                    ), Padding(padding: EdgeInsets.only(top:250,left: 15),
                      child: Text("Genres : Drame, Action, Espionnage, Aventure",style: TextStyle(
                        color: const Color.fromARGB(255, 193, 193, 193),
                        fontSize: 20,
                        fontWeight: FontWeight.w900
                      ),),
                    ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 450, left: 150, right: 150),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, "");
                      },
                      child: const Row(
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
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 500, left: 150, right: 121),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, "");
                      },
                      child:const Row(
                        children:  [
          
                          Text(
                            "Télécharger",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black),
                          )
                        ],
                      )),
                ),
               
              ]),
              
              Padding(
                padding: const EdgeInsets.only(right:315),
                child: Text("Synopsis",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),
              ),
              Text(
                "Nearly five millennia after being given the superpowers of the ancient gods and imprisoned, Black Adam (Johnson) is released from his earthly tomb, Ready to unleash his own idea of justice on the modern world.",
                style: TextStyle(color: const Color.fromARGB(255, 201, 201, 201),fontSize: 20,),
                ),
              carousselTitle("Casting", 335),
              carousselCasting(300),
              carousselTitle("Galerie", 335),
              carousselCasting(200),
              
            ],
          ),
        ));
  }
}

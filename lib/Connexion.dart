import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 195),
                child: Text(
                  "Se connecter",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Email ou numéro téléphone",
                    hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(10.0), // Set the border radius
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 89, 89, 89),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Mot de passe",
                    hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(10.0), // Set the border radius
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 89, 89, 89),
                  ),
                ),
              ),
              /*
              FlatButton(
                width: 200,
                height: 45,
                color: Colors.red,
                child: Padding(padding: EdgeInsets.all(10),
                child:Container(
                  child: Center(
                    child: Text("Se connecter",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    ),
                    ),
                  ),
                ) ,
                ),
              ),
    */
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/Accueil");
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Colors.red), // Set the button color to red
                  minimumSize: MaterialStateProperty.all(Size(
                      250, 50)), // Set the button width to 150 and height to 50
                ),
                child: Text(
                  "Se connecter",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Besoin d'aide?",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 187, 187, 187)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 75),
                child: Row(
                  children: [
                    Text(
                      'Nouveau sur Netflix?',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 65, 65, 65),
                          fontWeight: FontWeight.normal),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "S'inscrire maintenant",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 55),
                child: Row(children: [
                  Center(
                    child: Text(
                      "Cette page est protégé par Google reCAPTCHA pour \n          s'assurer que vous n'êtes pas un robot.",
                      style: TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 65, 65, 65),
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ]),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Lire la suite.",
                    style: TextStyle(color: Colors.blue),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 155.0),
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.facebook,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Icon(
                        FontAwesomeIcons.instagram,
                        color: Colors.white,
                      ),
                    ),
                    Icon(FontAwesomeIcons.youtube, color: Colors.white)
                  ],
                ),
              ),
              Center(
                  child: Text(
                "   Audiodescription \nRelations investisseurs \n  Informations légales",
                style: TextStyle(color: Colors.white),
              )),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Code de service",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

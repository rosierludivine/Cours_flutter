import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: {
      '/': (context) => HomeScreen(),
      '/SignUp': (context) => Login(),
      '/Login': (context) => Accueil(),
      '/Details': (context) => Detail(),
    });
  }
}

final CarouselController _carouselController = CarouselController();

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Expanded(
            child: CarouselSlider(
              carouselController: _carouselController,
              items: [
                HomePage(),
                CarouselPage2(),
                CarouselPage3(),
                CarouselPage4(),
              ],
              options: CarouselOptions(
                //
                // Options du carrousel
                aspectRatio: MediaQuery.of(context).size.width /
                    MediaQuery.of(context).size.height, // Plein écran
                viewportFraction: 1.0, // Occupe toute la largeur de l'écran
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//Page du carousel 1
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image1.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black
                      .withOpacity(1), // Couleur plus claire vers le bas
                  Colors.transparent,
                ],
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 500.0), // Ajustez le padding en bas
                  child: Text(
                    'Get Strongest for Preparation',
                    style: TextStyle(
                      fontFamily: 'Lora', //la police du texte
                      fontSize: 32, // la taille du texte
                      color: Colors.white, // la couleur du texte
                      fontWeight: FontWeight.bold, // mettre en gras le texte
                    ),
                    textAlign: TextAlign.center, // mettre au centre le texte
                  ),
                ),
                Text(
                  'Be an Inspiration',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Passez à la page suivante du carrousel en utilisant le contrôleur.
                        _carouselController.nextPage();
                      },
                      style: ElevatedButton.styleFrom(
                          primary:
                              Colors.black, // Couleur de fond du bouton (noir)
                          onPrimary: Color(
                              0xFFF34E3A), // Couleur du texte du bouton (F34E3A)
                          elevation: 2, // Élévation du bouton (bordure de 2)
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(
                              color: Color(0xFFF34E3A), // Couleur de la bordure
                              width: 2, // Largeur de la bordure
                            ),
                          ),
                          minimumSize: Size(200, 50)),
                      child: Text(
                        'Next',
                        style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//Page du carousel 2
class CarouselPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image2.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black
                      .withOpacity(1), // Couleur plus claire vers le bas
                  Colors.transparent,
                ],
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 500.0), // Ajustez le padding en bas
                  child: Text(
                    'Build Your Mind and Body',
                    style: TextStyle(
                      fontFamily: 'Lora',
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  'Be an Inspiration',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Passez à la page suivante du carrousel en utilisant le contrôleur.
                        _carouselController.nextPage();
                      },
                      style: ElevatedButton.styleFrom(
                          primary:
                              Colors.black, // Couleur de fond du bouton (noir)
                          onPrimary: Color(
                              0xFFF34E3A), // Couleur du texte du bouton (F34E3A)
                          elevation: 2, // Élévation du bouton (bordure de 2)
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(
                              color: Color(0xFFF34E3A), // Couleur de la bordure
                              width: 2, // Largeur de la bordure
                            ),
                          ),
                          minimumSize: Size(200, 50)),
                      child: Text(
                        'Next',
                        style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//Page du carousel 3
class CarouselPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image3.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black
                      .withOpacity(1), // Couleur plus claire vers le bas
                  Colors.transparent,
                ],
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 500.0), // Ajustez le padding en bas
                  child: Text(
                    'Running to your Dream',
                    style: TextStyle(
                      fontFamily: 'Lora', //la police du texte
                      fontSize: 32, // la taille du texte
                      color: Colors.white, // la couleur du texte
                      fontWeight: FontWeight.bold, // mettre en gras le texte
                    ),
                    textAlign: TextAlign.center, // mettre au centre le texte
                  ),
                ),
                Text(
                  'Be an Inspiration',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Passez à la page suivante du carrousel en utilisant le contrôleur.
                        Navigator.pushNamed(context, '/SignUp');
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color(
                              0xFFF34E3A), // Couleur de fond du bouton (noir)
                          onPrimary: Color(
                              0xFFF34E3A), // Couleur du texte du bouton (F34E3A)
                          elevation: 2, // Élévation du bouton (bordure de 2)
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(
                              color: Color(0xFFF34E3A), // Couleur de la bordure
                              width: 2, // Largeur de la bordure
                            ),
                          ),
                          minimumSize: Size(200, 50)),
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//Page du carousel 4
class CarouselPage4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image4.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black
                      .withOpacity(1), // Couleur plus claire vers le bas
                  Colors.transparent,
                ],
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 500.0), // Ajustez le padding en bas
                  child: Text(
                    'Get Strongest for Preparation',
                    style: TextStyle(
                      fontFamily: 'Lora',
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  'Be an Inspiration',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//Page Login
class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF141516), // Couleur de fond
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(100.0),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    'assets/altere.png',
                    width: 95,
                    height: 95,
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    'assets/Nom.png',
                    width: 200,
                    height: 200,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment
                        .center, // Aligner le texte au centre verticalement
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 350.0),
                        child: Text(
                          'Be an Inspiration',
                          style: TextStyle(
                            color: Color(0xFF656565),
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //Username
                Padding(
                  padding: const EdgeInsets.only(top: 230.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Username',
                      filled: true,
                      fillColor: Colors.black,
                      hintStyle: TextStyle(color: Color(0xFF484848)),
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(30.0), // Coins arrondis
                      ),
                    ),
                  ),
                ),
                //Password
                Padding(
                  padding: const EdgeInsets.only(top: 300.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      filled: true,
                      fillColor: Colors.black,
                      hintStyle: TextStyle(color: Color(0xFF484848)),
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(30.0), // Coins arrondis
                      ),
                    ),
                  ),
                ),
                //button SignUP
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Passez à la page suivante du carrousel en utilisant le contrôleur.
                        Navigator.pushNamed(context, '/Login');
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color(
                              0xFFF34E3A), // Couleur de fond du bouton (noir)
                          onPrimary: Color(
                              0xFFF34E3A), // Couleur du texte du bouton (F34E3A)
                          elevation: 2, // Élévation du bouton (bordure de 2)
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(
                              color: Color(0xFFF34E3A), // Couleur de la bordure
                              width: 2, // Largeur de la bordure
                            ),
                          ),
                          minimumSize: Size(200, 50)),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//Page Accueil
class Accueil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xFF141516),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    //Text Welcome Roberto !
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0, left: 20.0),
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(
                                  fontSize: 20, fontFamily: 'Montserrat'),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Welcome, ',
                                  style: TextStyle(),
                                ),
                                TextSpan(
                                  text: 'Roberto!',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFDAD6D6),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    //Afficher la date
                    Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          Text('Monday, 21 August 2020',
                              style: TextStyle(
                                color: Color(0xFF545454),
                                fontSize: 11,
                                fontFamily: 'Montserrat',
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            //Affichage de l'image
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Image.asset(
                    'assets/Dashboard.png',
                    width: 500,
                    height: 250,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text('Activity',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFDAD6D6),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Choose your program',
                    style: TextStyle(
                      fontSize: 11,
                      fontFamily: 'Montserrat',
                      color: Color(0xFF545454),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      // Passez à la page suivante du carrousel en utilisant le contrôleur.
                      Navigator.pushNamed(context, '/Detail');
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Color(
                            0xFF141516), // Couleur de fond du bouton (noir)
                        onPrimary: Color(
                            0xFFF34E3A), // Couleur du texte du bouton (F34E3A)
                        elevation: 2, // Élévation du bouton (bordure de 2)
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(
                            color: Color(0xFFF34E3A), // Couleur de la bordure
                            width: 2, // Largeur de la bordure
                          ),
                        ),
                        minimumSize: Size(200, 50)),
                    child: Text(
                      'Build Your Body',
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                      ),
                    ),
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

//Page Detail
class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Ceci est la page de profil.'),
      ),
    );
  }
}

//Page Profile
class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Ceci est la page de profil.'),
      ),
    );
  }
}

//Page Setting
class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Ceci est la page de paramètres.'),
      ),
    );
  }
}

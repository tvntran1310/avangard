import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:namer_app/ui-app/22-08-23/components/buttons.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 138, 60, 55),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 15,
            ),

            // shop name
            Text(
              'SUSHIMAN',
              style: GoogleFonts.dmSerifDisplay(
                color: Colors.white,
                fontSize: 35,
              ),
            ),
            // icon
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'lib/images/sushi-roll.png',
                  width: 250,
                  height: 350,
                ),
              ],
            ),

            // title
            Text(
              'DESCRIPTION SUSHI SHOP - JAPAN FOOD',
              style: GoogleFonts.dmSerifDisplay(
                color: Colors.white,
                fontSize: 35,
              ),
            ),

            // subtitle
            SizedBox(
              height: 15,
            ),

            Text(
              'Sushi, a staple rice dish of Japanese cuisine, consisting of cooked rice flavoured with vinegar and a variety of vegetable, egg, or raw seafood garnishes and served cold.',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                height: 1.5,
              ),
            ),

            // button (text + icon)
            SizedBox(
              height: 50,
            ),
            GetStartedButton(
              text: 'Get Started',
              onTap: () {
                // go to menu screen
                Navigator.pushNamed(context, '/menupage');
              },
            ),
          ],
        ),
      ),
    );
  }
}

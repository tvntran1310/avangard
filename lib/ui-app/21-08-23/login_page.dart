import 'package:flutter/material.dart';
import '../20-08-23/demo_color.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            // icon + shop name
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // icon
                // SizedBox(height: 200.0),
                Image.asset(
                  'lib/images/leaf.png',
                  width: 45.0,
                  height: 45.0,
                ),

                // Name
                // SizedBox(height: 25.0),
                Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Text(
                    'Leafboard',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ],
            ),

            // title:
            Text(
              'Work without limits',
              style: TextStyle(
                fontSize: 20,
              ),
            ),

            const SizedBox(
              height: 30.0,
            ),

            // Your email address
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Your email address:',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),

            // text box
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                ),
              ),
            ),

            // Choose a password
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Choose a password:',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            // text box
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                ),
              ),
            ),

            // button 'Continue'
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DemoColor(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                  foregroundColor: Color.fromARGB(255, 0, 0, 0),
                  minimumSize: Size(350, 50),
                ),
                child: Text('Continue'),
              ),
            ),

            // text --or--
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(25),
                  child: Text(
                    'or',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),

            // Button sign up with gg
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: ElevatedButton(
                onPressed: () => print('Login with Google'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                  foregroundColor: Color.fromARGB(255, 0, 0, 0),
                  minimumSize: Size(350, 50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'lib/images/google.png',
                      width: 20,
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text('Sign up with Google'),
                    )
                  ],
                ),
              ),
            ),

            // Button sign up with apple
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: ElevatedButton(
                onPressed: () => print('Login with Apple'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                  foregroundColor: Color.fromARGB(255, 0, 0, 0),
                  minimumSize: Size(350, 50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'lib/images/apple-logo.png',
                      width: 20,
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text('Sign up with Apple'),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

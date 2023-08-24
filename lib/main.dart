// import 'dart:html';

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
// import 'package:namer_app/ui-app/22-08-23/pages/menu_page.dart';
import 'package:provider/provider.dart';
// import 'ui-app/21-08-23/login_page.dart';
import 'ui-app/22-08-23/pages/intro_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App',
        home: MyHomePage(),
        routes: {
          '/intropage': (context) => const IntroPage(),
          // '/menupage': (context) => const MenuPage(),
        },
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var appState = context.watch<MyAppState>();

    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to the DetailsPage
                Navigator.push(
                  context,
                  // MaterialPageRoute(builder: (context) => LoginPage()),
                  MaterialPageRoute(builder: (context) => IntroPage()),
                );
              },
              child: Text('Go to Details'),
            ),
          ],
        ),
      )),
    );
  }
}

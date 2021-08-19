import 'package:flutter/material.dart';
import 'login/securty_screen_page.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        brightness: Brightness.light,
        accentColor: Colors.black,
        cardColor: Colors.white,
        canvasColor: Colors.grey[200],
        buttonColor: Colors.black,
        hoverColor: Colors.white,
      ),
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          accentColor: Colors.white,
          cardColor: Colors.black,
          canvasColor: Colors.grey[900],
          buttonColor: Colors.white,
          hoverColor: Colors.black26
      ),
      home: ExampleHomePage(),
    );
  }
}
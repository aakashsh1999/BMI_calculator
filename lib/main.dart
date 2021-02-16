import 'package:flutter/material.dart';
import 'screens/homepage.dart';
import 'screens/resultpage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context) => Homepage(),
        'first': (context) => ResultPage(bmiText: '', interpretationText: '', resultText: '',),
      },
    );
  }
}

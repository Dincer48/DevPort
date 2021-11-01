import 'package:flutter/material.dart';
import 'package:wtechvideo/screens/profile.dart';

import 'screens/onboarding.dart';
import 'screens/video_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DK Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Raleway'),
      initialRoute: '/onboarding',
      routes: {
        "/onboarding": (BuildContext context) =>  Onboarding(),
        "/profile": (BuildContext context) =>  Profile(),
        "/videos": (BuildContext context) =>  VideoScreen(),
      },
    );
  }
}

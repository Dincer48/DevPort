import 'dart:ui';
import 'package:flutter/material.dart';

import '../constants/theme.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
                decoration:const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/onboarding1-bg.png"),
                        fit: BoxFit.cover))),
            SafeArea(
              child: Container(
                padding: EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,
                    top: MediaQuery.of(context).size.height * 0.15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset("assets/images/dklogo.jpg",
                                scale: 3.5,),
                        ),
                       const SizedBox(height: 20),
                        Container(
                            child: Center(
                                child: Column(
                                  children: [
                                    Container(
                                        width: MediaQuery.of(context).size.width / 3,
                                        child:const FittedBox(
                                            fit: BoxFit.contain,
                                            child: Text("Dinçer KIZILDERE",
                                                style: TextStyle(
                                                    color: WtechTheme.yellow,
                                                    fontWeight: FontWeight.w600)))),
                                    Container(
                                        width: MediaQuery.of(context).size.width / 3,
                                        child:const FittedBox(
                                          fit: BoxFit.contain,
                                          child: Text("Flutter",
                                              style: TextStyle(
                                                  color: WtechTheme.yellow,
                                                  fontWeight: FontWeight.w600)),
                                        ))
                                  ],
                                ))),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                           Text("Coded By",
                                style: TextStyle(
                                    color: WtechTheme.yellow,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.3)),
                            SizedBox(width: 10.0),
                            Text('Dinçer KIZILDERE',
                                style: TextStyle(
                                    color: WtechTheme.white,
                                    fontWeight: FontWeight.w600))
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary:WtechTheme.yellow,
                            onPrimary: WtechTheme.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                          ),
                          ),
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/profile');
                          },
                          child:const Padding(
                              padding:  EdgeInsets.only(
                                  left: 16.0, right: 16.0, top: 16, bottom: 16),
                              child: Text("GET STARTED",
                                  style: TextStyle(fontSize: 20.0))),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
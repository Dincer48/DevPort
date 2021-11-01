import 'dart:ui';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wtechvideo/constants/theme.dart';
import 'package:wtechvideo/widgets/drawer.dart';

class Profile extends StatelessWidget {

  _launchURL() async {
    const url = 'https://github.com/Dincer48';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Text("Profile",style: TextStyle(color: WtechTheme.yellow,fontSize: 25,fontWeight: FontWeight.w400),),
          backgroundColor: WtechTheme.text,
          centerTitle: true,
          actions: [

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: GestureDetector(
              child: const Icon(Icons.help),
              onTap: ()=> AwesomeDialog(
                context: context,
                dialogType: DialogType.SUCCES,
                  animType: AnimType.BOTTOMSLIDE,
                body:const Center(child: Text(
                  'Do you want to know more about me?',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),),
                title: 'Help',
                btnCancelOnPress: (){
                },
                btnOkOnPress: (){
                  Navigator.pushReplacementNamed(context, '/videos');
                }
              )..show()
              ),
            ),

          ],
        ),
        backgroundColor: WtechTheme.bgColorScreen,
        drawer: DrawerWidget(currentPage: "Profile"),
        body: Stack(
          children: <Widget>[
            Column(
              children: [
                Flexible(
                  flex: 2,
                  child: Container(
                      decoration:const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/bg-profile.png"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(50),
                              bottomLeft: Radius.circular(50),)),
                      child: Stack(
                        children: <Widget>[
                          SafeArea(
                            bottom: false,
                            right: false,
                            left: false,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 0, right: 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                 const CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "assets/images/profile.png"),
                                      radius: 65.0),
                                 const Padding(
                                    padding: const EdgeInsets.only(top: 24.0),
                                    child: Text("Dinçer KIZILDERE",
                                        style: TextStyle(
                                            color: WtechTheme.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 22)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                       const Icon(FontAwesomeIcons.heartbeat,color: Colors.blue,),
                                        Text("Flutter Developer",
                                            style: TextStyle(
                                                color: WtechTheme.white
                                                    .withOpacity(0.85),
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600)),
                                       const Icon(FontAwesomeIcons.heartbeat,color: Colors.blue,)
                            
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 15),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(right: 8.0),
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                primary:WtechTheme.info,
                                                onPrimary: WtechTheme.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(32),
                                                ),
                                              ),
                                              onPressed: () { },
                                              child:const Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 12.0, right: 12.0, top: 10, bottom: 10),
                                                  child: Text("Follow",
                                                      style: TextStyle(fontSize: 13.0))),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(right: 4),
                                            child: RawMaterialButton(
                                              constraints: BoxConstraints.tight(Size(38, 38)),
                                              onPressed: () {},
                                              elevation: 4.0,
                                              fillColor: WtechTheme.defaultColor,
                                              child: const Icon(FontAwesomeIcons.instagram,
                                                  size: 14.0, color: Colors.white),
                                              padding:const EdgeInsets.all(0.0),
                                              shape:const CircleBorder(),
                                            ),
                                          ),
                                          RawMaterialButton(
                                            constraints: BoxConstraints.tight(Size(38, 38)),
                                            onPressed: () {},
                                            elevation: 4.0,
                                            fillColor: WtechTheme.defaultColor,
                                            child:const Icon(FontAwesomeIcons.twitter,
                                                size: 14.0, color: Colors.white),
                                            padding:const EdgeInsets.all(0.0),
                                            shape:const CircleBorder(),
                                          ),
                                          RawMaterialButton(
                                            constraints: BoxConstraints.tight(Size(38, 38)),
                                            onPressed: () {
                                              _launchURL();
                                            },
                                            elevation: 4.0,
                                            fillColor: WtechTheme.defaultColor,
                                            child:const Icon(FontAwesomeIcons.github,
                                                size: 25, color: Colors.red),
                                            padding:const EdgeInsets.all(4.0),
                                            shape:const CircleBorder(),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),

                        ],
                      )),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                      child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 32.0, right: 32.0, top: 42.0),
                            child: Column(children: const [
                              Text("About Me",
                                  style: TextStyle(
                                      color: WtechTheme.primary,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17.0)),
                              Padding(
                                padding:  EdgeInsets.only(
                                    left: 24.0, right: 24, top: 30, bottom: 24),
                                child: Text(
                                    "Solutions-driven professional having experience driving full"
                                        " lifecycle design and engineering high performance mobile applications."
                                        " Known for writing efficient, maintainable and reusable code that preserves privacy and security."
                                        " I love to keep my hands dirty in coding, designing solutions, code review &  in most of all kind of tech work."
                                        " Experienced in executing all phases of software development lifecycle, from Conceptual design through development,"
                                        " testing, and enhancement. Strengths include responsible, innovative and team player."
                                        " Highly motivated person with the ability to learn new technologies and methodologies,"
                                        " and highly conceptual with excellent communication,"
                                        " inter personal and organizational skills with ability to perform interdependently and as team.",                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: WtechTheme.text)),
                              ),
                              // PhotoAlbum(imgArray: imgArray)
                            ]),
                          ))),
                ),
              ],
            ),

          ],
        ));
  }
}
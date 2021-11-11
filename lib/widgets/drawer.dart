
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wtechvideo/constants/theme.dart';

import 'drawer_tile.dart';



class DrawerWidget extends StatelessWidget {
  final String? currentPage;

    DrawerWidget({ this.currentPage});

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
    return ClipRRect(
      borderRadius:const BorderRadius.only(
          bottomRight: Radius.circular(200),
          topRight:  Radius.circular(50)),
      child: Drawer(
          child: Container(
            color: WtechTheme.text,
            child: Column(children: [
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: SafeArea(
                    bottom: false,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24.0, right: 20.0, top: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Image.asset("assets/images/dklogo.jpg")),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: IconButton(
                                icon: Icon(Icons.menu,
                                    color: WtechTheme.white.withOpacity(0.82),
                                    size: 24.0),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                }),
                          ),
                        ],
                      ),
                    ),
                  )),
              Expanded(
                flex: 2,
                child: ListView(
                  padding: const EdgeInsets.only(top: 36, left: 8, right: 16),
                  children: [
                    DrawerTile(
                        icon: Icons.home,
                        onTap: () {
                            Navigator.pushNamed(context, '/onboarding');
                        },
                        iconColor: WtechTheme.primary,
                        title: "Home",
                        isSelected: currentPage == "Home" ? true : false),

                    DrawerTile(
                        icon: Icons.person,
                        onTap: () {
                          if (currentPage != "Profile")
                            Navigator.pushNamed(context, '/profile');
                        },
                        iconColor: WtechTheme.yellow,
                        title: "Profile",
                        isSelected: currentPage == "Profile" ? true : false),

                    DrawerTile(
                        icon: Icons.help,
                        onTap: () {
                          // AwesomeDialog(
                          //     context: context,
                          //     dialogType: DialogType.ERROR,
                          //     animType: AnimType.SCALE,
                          //     body: Center(
                          //       child: Row(
                          //         mainAxisAlignment: MainAxisAlignment.center,
                          //         children:const [
                          //            Text(
                          //           'Coming Soon!',
                          //           style: TextStyle(fontStyle: FontStyle.italic, fontSize: 25),
                          //     ),
                          //           Icon(FontAwesomeIcons.smileWink)
                          //         ],
                          //       ),
                          //     ),
                          //     btnOkOnPress: (){
                          //     }
                          //
                          // ).show();
                          Navigator.pushNamed(context, '/contact');
                        },
                        iconColor: WtechTheme.yellow,
                        title: "Contact",
                        isSelected: currentPage == "Contact" ? true : false),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                    padding: const EdgeInsets.only(left: 8, right: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(
                            height: 4,
                            color: WtechTheme.white.withOpacity(0.8)),
                        Padding(
                          padding:
                          const EdgeInsets.only(top: 16.0, left: 16, bottom: 8),
                          child: Text("DOCUMENTATION",
                              style: TextStyle(
                                color: WtechTheme.white.withOpacity(0.8),
                                fontSize: 13,
                              )),
                        ),
                        DrawerTile(
                            icon: FontAwesomeIcons.github,
                            onTap: _launchURL,
                            iconColor: WtechTheme.muted,
                            title: "Go To Github",
                            isSelected:
                            currentPage == "Github" ? true : false),
                      ],
                    )),
              ),
            ]),
          )),
    );

  }

}


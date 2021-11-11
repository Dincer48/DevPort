
import 'package:flutter/material.dart';
import 'package:wtechvideo/constants/theme.dart';
import 'package:wtechvideo/widgets/contactus.dart';
import 'package:wtechvideo/widgets/drawer.dart';


class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
        title: const Text("Contact",style: TextStyle(color: WtechTheme.yellow,fontSize: 25,fontWeight: FontWeight.w400),),
           backgroundColor: WtechTheme.text,
           centerTitle: true,
        ),
        drawer: DrawerWidget(currentPage: "Contact"),
        backgroundColor: WtechTheme.text,
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: ContactUsBottomAppBar(
            companyName: 'Dinçer KIZILDERE',
            textColor: Colors.white,
            backgroundColor: WtechTheme.text,
            email: 'dincerkizildere97@gmail.com',
            // textFont: 'Sail',
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ContactUs(
              dividerColor: WtechTheme.yellow,
              cardColor: WtechTheme.muted,
              textColor: WtechTheme.black,
              logo: AssetImage('assets/images/profile.png'),
              email: 'dincerkizildere97@gmail.com',
              companyName: 'Dinçer KIZILDERE',
              companyColor: WtechTheme.yellow,
              dividerThickness: 2,
              phoneNumber: '+9005349270528',
              githubUserName: 'Dincer48',
              linkedinURL:
              'https://www.linkedin.com/in/din%C3%A7er-kizildere-6a866313b/',
              tagLine: 'Flutter Developer',
              taglineColor: WtechTheme.yellow,
              twitterHandle: 'KizildereDincer',
              instagram: 'dincer_367',
              facebookHandle: 'dincer714'),
        ),

    );
  }
}
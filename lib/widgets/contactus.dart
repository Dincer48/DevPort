library contactus;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:typicons_flutter/typicons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wtechvideo/constants/theme.dart';

class ContactUs extends StatelessWidget {
  final ImageProvider? logo;

  final Image? image;

  final String? phoneNumber;

  final String? phoneNumberText;

  final String? website;

  final String? websiteText;

  final String email;

  final String? emailText;

  final String? twitterHandle;

  final String? facebookHandle;

  final String? linkedinURL;

  final String? githubUserName;

  final String companyName;

  final double? companyFontSize;

  final String? tagLine;

  final String? instagram;

  final Color textColor;

  final Color cardColor;

  final Color companyColor;

  final Color taglineColor;

  final String? textFont;

  final String? companyFont;

  final String? taglineFont;

  final Color? dividerColor;


  final double? dividerThickness;

  final FontWeight? companyFontWeight;
  final FontWeight? taglineFontWeight;

  final double? avatarRadius;

  ContactUs({
    required this.companyName,
    required this.textColor,
    required this.cardColor,
    required this.companyColor,
    required this.taglineColor,
    required this.email,
    this.emailText,
    this.logo,
    this.image,
    this.phoneNumber,
    this.phoneNumberText,
    this.website,
    this.websiteText,
    this.twitterHandle,
    this.facebookHandle,
    this.linkedinURL,
    this.githubUserName,
    this.tagLine,
    this.instagram,
    this.companyFontSize,
    this.textFont,
    this.companyFont,
    this.taglineFont,
    this.dividerColor,
    this.companyFontWeight,
    this.taglineFontWeight,
    this.avatarRadius,
    this.dividerThickness,
  });

  showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          elevation: 8.0,
          contentPadding: EdgeInsets.all(18.0),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          content: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: () => launch('tel:' + phoneNumber!),
                  child: Container(
                    height: 50.0,
                    alignment: Alignment.center,
                    child: Text('Call'),
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () => launch('sms:' + phoneNumber!),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    child: Text('Message'),
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () => launch('https://wa.me/' + phoneNumber!),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    child: Text('WhatsApp'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.35,
              decoration:const BoxDecoration(
                  // image: DecorationImage(
                  //     image: AssetImage("assets/images/softwre.gif"),
                  //     fit: BoxFit.fill),
                borderRadius: BorderRadius.only(bottomLeft:Radius.circular(20),bottomRight: Radius.circular(20)),
                color: WtechTheme.muted
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Visibility(
                      visible: logo != null,
                      child: CircleAvatar(
                        radius: avatarRadius ?? 50.0,
                        backgroundImage: logo,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Visibility(
                          visible: image != null, child: image ?? const SizedBox.shrink()),
                    ),
                    Text(
                      companyName,
                      style: TextStyle(
                        fontFamily: companyFont ?? 'Pacifico',
                        fontSize: companyFontSize ?? 40.0,
                        color: companyColor,
                        fontWeight: companyFontWeight ?? FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Visibility(
                        visible: tagLine != null,
                        child: Text(
                          tagLine ?? "",
                          style: TextStyle(
                            fontFamily: taglineFont ?? 'Pacifico',
                            color: taglineColor,
                            fontSize: 20.0,
                            letterSpacing: 2.0,
                            fontWeight: taglineFontWeight ?? FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

           const SizedBox(
              height: 10.0,
            ),
            Divider(
              color: dividerColor ?? Colors.teal[200],
              thickness: dividerThickness ?? 4.0,
              indent: 50.0,
              endIndent: 50.0,
            ),
           const SizedBox(
              height: 10.0,
            ),
            Visibility(
              visible: website != null,
              child: Card(
                clipBehavior: Clip.antiAlias,
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 10.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                color: cardColor,
                child: ListTile(
                  leading:const Icon(FontAwesomeIcons.link),
                  title: Text(
                    websiteText ?? 'Website',
                    style: TextStyle(
                      color: textColor,
                      fontFamily: textFont,
                    ),
                  ),
                  onTap: () => launch(website!),
                ),
              ),
            ),
            Visibility(
              visible: phoneNumber != null,
              child: Card(
                clipBehavior: Clip.antiAlias,
                margin:const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 20.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                color: cardColor,
                child: ListTile(
                  leading:const Icon(FontAwesomeIcons.phone,color: WtechTheme.red,),
                  title: Text(
                    phoneNumberText ?? 'Phone Number',
                    style: TextStyle(
                      color: textColor,
                      fontFamily: textFont,
                    ),
                    textAlign: TextAlign.left ,
                  ),
                  onTap: () => showAlert(context),
                ),
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              margin:const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 20.0,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              color: cardColor,
              child: ListTile(
                leading:const Icon(FontAwesomeIcons.mailBulk,color: WtechTheme.red,),
                title: Text(
                  emailText ?? 'Email ID',
                  style: TextStyle(
                    color: textColor,
                    fontFamily: textFont,
                  ),
                    textAlign: TextAlign.left
                ),
                onTap: () => launch('mailto:' + email),
              ),
            ),
            Visibility(
              visible: twitterHandle != null,
              child: Card(
                clipBehavior: Clip.antiAlias,
                margin:const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 20.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                color: cardColor,
                child: ListTile(
                  leading:const Icon(FontAwesomeIcons.twitter,color: WtechTheme.red),
                  title: Text(
                    'Twitter',
                    style: TextStyle(
                      color: textColor,
                      fontFamily: textFont,
                    ),
                      textAlign: TextAlign.left
                  ),
                  onTap: () => launch('https://twitter.com/' + twitterHandle!),
                ),
              ),
            ),
            Visibility(
              visible: facebookHandle != null,
              child: Card(
                clipBehavior: Clip.antiAlias,
                margin:const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 20.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                color: cardColor,
                child: ListTile(
                  leading:const Icon(FontAwesomeIcons.facebook,color: WtechTheme.red),
                  title: Text(
                    'Facebook',
                    style: TextStyle(
                      color: textColor,
                      fontFamily: textFont,
                    ),
                      textAlign: TextAlign.left
                  ),
                  onTap: () =>
                      launch('https://www.facebook.com/' + facebookHandle!),
                ),
              ),
            ),
            Visibility(
              visible: instagram != null,
              child: Card(
                clipBehavior: Clip.antiAlias,
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 20.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                color: cardColor,
                child: ListTile(
                  leading: Icon(FontAwesomeIcons.instagram,color: WtechTheme.red,),
                  title: Text(
                    'Instagram',
                    style: TextStyle(
                      color: textColor,
                      fontFamily: textFont,
                    ),
                      textAlign: TextAlign.left
                  ),
                  onTap: () => launch('https://instagram.com/' + instagram!),
                ),
              ),
            ),
            Visibility(
              visible: githubUserName != null,
              child: Card(
                clipBehavior: Clip.antiAlias,
                margin:const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 20.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                color: cardColor,
                child: ListTile(
                  leading:const Icon(FontAwesomeIcons.github,color: WtechTheme.red,),
                  title: Text(
                    'Github',
                    style: TextStyle(
                      color: textColor,
                      fontFamily: textFont,
                    ),
                      textAlign: TextAlign.left
                  ),
                  onTap: () => launch('https://github.com/' + githubUserName!),
                ),
              ),
            ),
            Visibility(
              visible: linkedinURL != null,
              child: Card(
                clipBehavior: Clip.antiAlias,

                margin:const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 20.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                color: cardColor,
                child: ListTile(
                  leading: const Icon(FontAwesomeIcons.linkedin,color: WtechTheme.red,),
                  title: Text(
                    'Linkedin',
                    style: TextStyle(
                      color: textColor,
                      fontFamily: textFont,
                    ),
                      textAlign: TextAlign.left
                  ),
                  onTap: () => launch(linkedinURL!),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContactUsBottomAppBar extends StatelessWidget {
  final Color textColor;

  final Color backgroundColor;

  final String email;

  final String companyName;

  final double fontSize;

  final String? textFont;

  ContactUsBottomAppBar({
    required this.textColor,
    required this.backgroundColor,
    required this.email,
    required this.companyName,
    this.fontSize = 15.0,
    this.textFont,
  });
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        onSurface: Colors.grey,
        shadowColor: Colors.transparent,
      ),
      child: Text(
        'Designed and Developed by $companyName 💙\nWant to contact?',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: textColor, fontSize: fontSize, fontFamily: textFont),
      ),
      onPressed: () => launch('mailto:$email'),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:video_player/video_player.dart';
import 'package:wtechvideo/constants/theme.dart';
import 'package:wtechvideo/widgets/drawer.dart';
import 'package:wtechvideo/widgets/video_items.dart';

class VideoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Motorcycle is Love",style: TextStyle(color: WtechTheme.yellow,fontSize: 25,fontWeight: FontWeight.w400),),
            Icon(FontAwesomeIcons.heart,color: WtechTheme.yellow,)
          ],
        ),
        backgroundColor: WtechTheme.text,
      ),
      drawer: DrawerWidget(currentPage: 'home',),
      body: ListView(
        children: <Widget>[
          VideoItems(
            videoPlayerController: VideoPlayerController.asset(
              'assets/videos/video_3.mp4',
            ),
            looping: false,
            autoplay: false,
          ),
        ],
      ),
    );
  }
}


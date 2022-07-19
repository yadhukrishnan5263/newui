import 'package:flutter/material.dart';
import 'package:uiprojects/youtube_ui/bottomnavi_appbar.dart';
import 'package:uiprojects/youtube_ui/mainpage_videos.dart';
import 'package:uiprojects/youtube_ui/yt_videodetails.dart';

void main(){
runApp(MaterialApp(darkTheme: ThemeData.dark(),
  debugShowCheckedModeBanner:false,
    home: youtubehome(),));
}

class youtubehome extends StatelessWidget  {



  @override
  Widget build(BuildContext context) {
   return Scaffold(
     bottomNavigationBar: BottomB(),
     body: CustomScrollView(
       shrinkWrap: true,
       slivers: [
         Appbar(),
         videolist(vdata: vdata,),
         

         


       ],
     ),
   );
  }
}
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:uiprojects/youtube_ui/suggestions_videos.dart';
import 'package:uiprojects/youtube_ui/yt_videodetails.dart';
import 'package:uiprojects/youtube_ui/yt_videodetails.dart';

import 'bottomnavi_appbar.dart';
import 'mainpage_videos.dart';



class videoplayer extends StatelessWidget {
final Videodata videodata;

  const videoplayer({super.key, required this.videodata});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomB(),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Stack(
                  children: [Container(
                    height: 220,
                    width: MediaQuery.of(context).size.width,
                    child: Image(
                      image: NetworkImage(
                          videodata.thumbnail),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_down_rounded)
                  ]
                ),
                LinearPercentIndicator(
                  progressColor: Colors.red,
                  padding: EdgeInsets.all(0),
                  percent: 0.4,
                  animation: true,
                  width: MediaQuery.of(context).size.width,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * .9,
                        child: Text(
                         videodata.title,
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                              fontSize: 19),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "${(videodata.views)} views",
                            style:
                                TextStyle(fontSize: 14, color: Colors.white70),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SizedBox(
                              width: 5,
                              child: Text("-"),
                            ),
                          ),
                          Text(
                            videodata.date,
                            style:
                                TextStyle(fontSize: 14, color: Colors.white70),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Divider(
                  indent: 10,
                  endIndent: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.thumb_up_outlined),
                        Text(videodata.like),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.thumb_down_outlined),
                        Text(videodata.dislike),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.reply_outlined),
                        Text('Share'),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.download),
                        Text('Download'),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.library_add_check_outlined),
                        Text('Save'),
                      ],
                    ),
                  ],
                ),
                Divider(
                  indent: 10,
                  endIndent: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        videodata.propic),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            children: [
                              Text(videodata.username,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                              Text("${(videodata.sub)} subscribers",style: TextStyle(fontSize: 14,color: Colors.white70),)
                            ],
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'SUBSCRIBE',
                          style: TextStyle(color: Colors.red,fontWeight: FontWeight.w800)
                        ),
                      ),

                    ],
                  ),
                ),
                Divider(
                  indent: 10,
                  endIndent: 10,
                ),

              ],
            ),
          ),
          suggestvideos(vdata: vdata,)
        ],
      ),
    );
  }
}

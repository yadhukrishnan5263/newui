import 'package:flutter/material.dart';
import 'package:uiprojects/Fitness%20ui6/meditarianview.dart';
import 'package:uiprojects/Fitness%20ui6/water.dart';

import 'appbar&bottom.dart';
import 'bodymeasure.dart';

void main() {
  runApp(MaterialApp(
    home: fitnessmainscreen(),
  ));
}

class fitnessmainscreen extends StatefulWidget {
  fitnessmainscreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _fitnessmainscreenstate();
}

class _fitnessmainscreenstate extends State<fitnessmainscreen> {
  late ScrollController _scrollController;
  double _ScrollControleroffset = 350;

  _scrolListener() {
    setState(() {
      _ScrollControleroffset = _scrollController.offset;
    });
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrolListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.greenAccent,
        ),
        child: Stack(
          children: [
            CustomScrollView(
              controller: _scrollController,
              slivers: [
                SliverToBoxAdapter(
                  child:Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 50,),
                          mediview(),
                          SizedBox(height: 50,),
                          bodymeasure(),
                          SizedBox(height: 50,),
                          water()

                        ],

                      )),
                )
              ],
            ),
            PreferredSize(
              child: FadeAppBar(scrollOffset: _ScrollControleroffset),
              preferredSize: Size(MediaQuery.of(context).size.width, 20),
            ),
          ],
        ),
      ),
    );
  }
}

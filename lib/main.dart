import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void showLayoutGuidelines() {
  debugPaintSizeEnabled = true;
}

void showBaselines() {
  debugPaintBaselinesEnabled = true;
}

void main() {
  // showLayoutGuidelines();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'ThreeTaps',
      home: AAA(),
    );
  }
}

class AAA extends StatelessWidget {
  const AAA({Key? key}) : super(key: key);
  final double _infinity = double.infinity;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ThreeTaps'),
        elevation: 0,
        foregroundColor: Colors.cyanAccent,
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: ThreeTaps(),
    );
  }
}

class ThreeTaps extends StatefulWidget {
  const ThreeTaps({Key? key}) : super(key: key);

  @override
  State<ThreeTaps> createState() => _ThreeTapsState();
}

class _ThreeTapsState extends State<ThreeTaps> {
  // List items = ['field1', 'field2', 'field3'];
  int _selectedIndex = 0;
  final Color _activeColor = const Color.fromARGB(255, 243, 245, 247);
  final Color _inactiveColor = const Color.fromARGB(255, 255, 255, 255);
  final Color _borderColor = const Color.fromARGB(255, 220, 226, 228);
  bool _visibleA = true;
  bool _visibleB = false;
  bool _visibleC = false;
  void _onTapped(int index) {
    setState(() {
      if (index == 0) {
        _visibleA = true;
        _visibleB = false;
        _visibleC = false;
      } else if (index == 1) {
        _visibleA = false;
        _visibleB = true;
        _visibleC = false;
      } else {
        _visibleA = false;
        _visibleB = false;
        _visibleC = true;
      }
    });
  }

  final List _tapPhrase = [
    {'num': '01', 'title': '고객 추가'},
    {'num': '02', 'title': '새 캠페인'},
    {'num': '03', 'title': '알츠윈 콜'},
  ];
  final Color _tapPhraseColor = const Color.fromARGB(255, 0, 71, 255);
  /* @override
  void initState() {
    super.initState();
    _miniTapAColor = _activeColor;
    _miniTapBColor = _inactiveColor;
    _miniTapCColor = _inactiveColor;
  } */

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[100],
      // padding: EdgeInsets.symmetric(horizontal: 50),
      width: 1700,
      padding: EdgeInsets.symmetric(horizontal: 50),
      height: 1000,
      // constraints: const BoxConstraints(
      //   maxWidth: 700,
      //   minHeight: 500,
      // ),
      // constraints: BoxConstraints.expand(),
      child: Stack(
        // alignment: Alignment.bottomCenter,
        // clipBehavior: Clip.antiAliasWithSaveLayer,
        // fit: StackFit.passthrough,
        children: <Widget>[
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            child: Container(
              height: 60,
              color: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.pink[900],
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const <Widget>[
                          Expanded(
                            child: Text('data'),
                          ),
                          Expanded(
                            child: Text('data'),
                          ),
                          Expanded(
                            child: Text('data'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.amberAccent[100],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          _introduceMenuTap(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 60,
            right: 0,
            child: Container(
              // width: 700,
              // width: MediaQuery.of(context).size.width - 200,
              // height: MediaQuery.of(context).size.height,
              // margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: Colors.tealAccent[100],
                border: Border.all(color: Colors.purpleAccent, width: 1),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(5.0),
                  bottomLeft: Radius.circular(5.0),
                  bottomRight: Radius.circular(5.0),
                ),
              ),
              child: Center(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Container(width: 50, height: 50, color: Colors.blue),
                          Container(width: 50, height: 50, color: Colors.yellow),
                          Container(width: 50, height: 50, color: Colors.red),
                        ]),
                        Container(width: 50, height: 50, color: Colors.teal),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 200,
                          height: 200,
                          decoration: const BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(100),
                              topRight: Radius.circular(100),
                              // bottomLeft: Radius.circular(40.0),
                              bottomRight: Radius.circular(40.0),
                            ),
                          ),
                        ),
                        Container(color: Color.fromARGB(255, 178, 180, 17), width: 50, height: 50),
                        // Container(color: Color.fromARGB(255, 14, 115, 216), width: 50, height: 50),
                        // Container(color: Color.fromARGB(255, 189, 22, 22), width: 50, height: 50),
                        Container(color: Color.fromARGB(255, 15, 124, 160), width: 50, height: 50),
                      ],
                    ),
                    Container(
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        border: Border.all(color: Colors.blueAccent, width: 10),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        border: Border.all(color: Colors.red, width: 5),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          /*   Positioned(
            top: 1,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const SizedBox(width: 1),
                _upperTap(id: 0, visible: _visibleA),
                const SizedBox(width: 12),
                _upperTap(id: 1, visible: _visibleB),
                const SizedBox(width: 12),
                _upperTap(id: 2, visible: _visibleC),
              ],
            ),
          ), */
        ],
      ),
    );
  }

  Widget _introduceMenuTap() {
    return Container(
      // width: (MediaQuery.of(context).size.width - 700) / 2,
      width: 200,
      height: 40,
      constraints: BoxConstraints(
        minWidth: 70,
        maxWidth: 130,
      ),
      decoration: BoxDecoration(
        color: _activeColor,
        border: Border.all(color: _borderColor, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
      ),
      child: Center(
        child: Text(
          '메뉴 소개',
        ),
      ),
    );
  }

  Widget _lowerTap({required int id}) {
    return Container(
      width: 130,
      height: 61,
      decoration: BoxDecoration(
        color: _inactiveColor,
        border: Border.all(color: _borderColor, width: 1),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(5), // bottomLeft: Radius.circular(40.0),
          topRight: Radius.circular(5), // bottomRight: Radius.circular(40.0),
        ),
      ),
      child: Center(
        child: Row(children: <Widget>[
          const SizedBox(
            width: 4,
            height: 40,
          ),
          const SizedBox(width: 8),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(_tapPhrase[id]['num']),
              Text(_tapPhrase[id]['title']),
            ],
          )
        ]),
      ),
    );
  }

  Widget _upperTap({required int id, required bool visible}) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
          onTap: () => _onTapped(id),
          child: Visibility(
            visible: visible,
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            maintainInteractivity: true,
            child: Container(
              width: 128,
              height: 60,
              decoration: BoxDecoration(
                color: _activeColor,
                // color: Colors.greenAccent,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(5), // bottomLeft: Radius.circular(40.0),
                  topRight: Radius.circular(5), // bottomRight: Radius.circular(40.0),
                ),
              ),
              child: Center(
                child: Row(children: <Widget>[
                  Container(
                    width: 4,
                    height: 40,
                    color: _tapPhraseColor,
                  ),
                  const SizedBox(width: 8),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(_tapPhrase[id]['num'], style: TextStyle(color: _tapPhraseColor)),
                      Text(_tapPhrase[id]['title'], style: TextStyle(color: _tapPhraseColor)),
                    ],
                  )
                ]),
              ),
            ),
          )),
    );
  }
}

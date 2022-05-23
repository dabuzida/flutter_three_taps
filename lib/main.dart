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
  bool _leftTap = true;
  bool _centerTap = false;
  bool _rightTap = false;
  void _onTapped(int index) {
    setState(() {
      if (index == 0) {
        _leftTap = true;
        _centerTap = false;
        _rightTap = false;
      } else if (index == 1) {
        _leftTap = false;
        _centerTap = true;
        _rightTap = false;
      } else {
        _leftTap = false;
        _centerTap = false;
        _rightTap = true;
      }
    });
  }

  final List _tapItems = [
    {'order': '01           ', 'title': '고객 추가'},
    {'order': '02           ', 'title': '새 캠페인'},
    {'order': '03           ', 'title': '알츠윈 콜'},
  ];
  final Color _tapPhraseColor = const Color.fromARGB(255, 0, 71, 255);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red[50],
      width: 1700,
      padding: const EdgeInsets.only(left: 50, top: 50, right: 50),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.redAccent, width: 1),
      ),
      height: 800,
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
              decoration: BoxDecoration(
                  // border: Border.all(color: Color.fromARGB(255, 27, 112, 209), width: 1),
                  ),
              height: 61,
              // color: Colors.blueGrey[100],
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: _lowerTap(id: 0),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: _lowerTap(id: 1),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: _lowerTap(id: 2),
                        ),
                      ],
                    ),
                  ),
                  const Expanded(flex: 1, child: SizedBox()),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                const Expanded(flex: 667, child: SizedBox()),
                Expanded(
                  flex: 130,
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: _activeColor,
                      border: Border.all(color: _borderColor, width: 1),
                      borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 16,
                      alignment: Alignment.center,
                      child: const FittedBox(
                        child: Text(
                          '메뉴 소개',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            top: 60,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                color: _activeColor, // Colors.brown[100],
                border: Border.all(color: _borderColor, width: 1), // Border.all(color: Colors.purpleAccent, width: 1),
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
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     Row(children: [
                    //       Container(width: 50, height: 50, color: Colors.blue),
                    //       Container(width: 50, height: 50, color: Colors.yellow),
                    //       Container(width: 50, height: 50, color: Colors.red),
                    //     ]),
                    //     Container(width: 50, height: 50, color: Colors.teal),
                    //   ],
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Container(
                        //   width: 200,
                        //   height: 200,
                        //   decoration: const BoxDecoration(
                        //     color: Colors.amber,
                        //     borderRadius: BorderRadius.only(
                        //       topLeft: Radius.circular(100),
                        //       topRight: Radius.circular(100),
                        //       // bottomLeft: Radius.circular(40.0),
                        //       bottomRight: Radius.circular(40.0),
                        //     ),
                        //   ),
                        // ),
                        // Container(color: Color.fromARGB(255, 178, 180, 17), width: 50, height: 50),
                        // // Container(color: Color.fromARGB(255, 14, 115, 216), width: 50, height: 50),
                        // // Container(color: Color.fromARGB(255, 189, 22, 22), width: 50, height: 50),
                        // Container(color: Color.fromARGB(255, 15, 124, 160), width: 50, height: 50),
                      ],
                    ),
                    // Container(
                    //   width: 200,
                    //   height: 100,
                    //   decoration: BoxDecoration(
                    //     color: Colors.green,
                    //     border: Border.all(color: Colors.blueAccent, width: 10),
                    //   ),
                    // ),
                    // Container(
                    //   width: 200,
                    //   height: 100,
                    //   decoration: BoxDecoration(

                    //     color: Colors.yellow,
                    //     border: Border.all(color: Colors.red, width: 5),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 1,
            right: 0,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      const SizedBox(width: 1),
                      Expanded(
                        child: _upperTap(id: 0, visible: _leftTap),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: _upperTap(id: 1, visible: _centerTap),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: _upperTap(id: 2, visible: _rightTap),
                      ),
                      const SizedBox(width: 1),
                    ],
                  ),
                ),
                const Expanded(flex: 1, child: SizedBox()),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _lowerTap({required int id}) {
    return Container(
      // width: 130,
      height: 61,
      padding: const EdgeInsets.only(/* left: 15, */ top: 10, right: 15, bottom: 10),
      decoration: BoxDecoration(
        color: _inactiveColor,
        // color: Colors.yellowAccent,
        border: Border.all(color: _borderColor, width: 1),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(5), // bottomLeft: Radius.circular(40.0),
          topRight: Radius.circular(5), // bottomRight: Radius.circular(40.0),
        ),
      ),
      child: Row(
        children: <Widget>[
          const Expanded(
            flex: 15,
            child: SizedBox(width: 15),
          ),
          Expanded(
            flex: 115,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 17,
                  alignment: Alignment.topLeft,
                  child: FittedBox(
                    child: Text(
                      _tapItems[id]['order'],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 17,
                  alignment: Alignment.bottomLeft,
                  child: FittedBox(
                    child: Text(
                      _tapItems[id]['title'],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
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
            height: 60,
            padding: const EdgeInsets.only(top: 10, right: 15, bottom: 10),
            decoration: BoxDecoration(
              color: _activeColor,
              // color: Colors.greenAccent,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(5), // bottomLeft: Radius.circular(40.0),
                topRight: Radius.circular(5), // bottomRight: Radius.circular(40.0),
              ),
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 5,
                  child: Container(
                    height: 40,
                    color: _tapPhraseColor,
                  ),
                ),
                const Expanded(flex: 8, child: SizedBox()),
                Expanded(
                  flex: 115,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        height: 17,
                        alignment: Alignment.topLeft,
                        child: FittedBox(
                          child: Text(
                            _tapItems[id]['order'],
                            style: TextStyle(color: _tapPhraseColor),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 17,
                        alignment: Alignment.bottomLeft,
                        child: FittedBox(
                          child: Text(
                            _tapItems[id]['title'],
                            style: TextStyle(color: _tapPhraseColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

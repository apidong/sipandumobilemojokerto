import 'dart:async';
import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';

class PendudukLoadingScreen extends StatefulWidget {
  @override
  _PendudukLoadingScreen createState() => _PendudukLoadingScreen();
}

class _PendudukLoadingScreen extends State<PendudukLoadingScreen> {
  final _animationDuration = Duration(seconds: 1);

  late Timer _timer;
  late Color _color;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(_animationDuration, (timer) => _changeColor());
    _color = Colors.grey;
  }

  void _changeColor() {
    final newColor = _color == Colors.grey ? Colors.grey.shade50 : Colors.grey;
    setState(() {
      _color = newColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.count(
        childAspectRatio: 9 / 2,
        crossAxisCount: 1,
        children: List.generate(2, (index) {
          return Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              width: MediaQuery.of(context).size.width,
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.deepOrange.shade500,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  AnimatedContainer(
                    margin: EdgeInsets.all(10),
                    height: 77,
                    width: 77,
                    alignment: Alignment.center,
                    duration: _animationDuration,
                    color: _color,
                  ),
                  Expanded(
                      child: Column(
                    children: [
                      AnimatedContainer(
                        alignment: Alignment.topLeft,
                        height: 18,
                        margin: EdgeInsets.fromLTRB(0, 10, 40, 0),
                        duration: _animationDuration,
                        color: _color,
                      ),
                      AnimatedContainer(
                        alignment: Alignment.topLeft,
                        height: 17,
                        margin: EdgeInsets.fromLTRB(0, 6, 40, 0),
                        duration: _animationDuration,
                        color: _color,
                      ),
                      AnimatedContainer(
                        alignment: Alignment.topLeft,
                        height: 15,
                        margin: EdgeInsets.fromLTRB(0, 6, 40, 0),
                        duration: _animationDuration,
                        color: _color,
                      )
                    ],
                  ))
                ],
              ),
            ),
          );
        }),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }
}

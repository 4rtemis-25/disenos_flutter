import 'dart:math';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key});
  final boxDecoration = const BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [
        0.2,
        0.8
      ],
          colors: [
        Color.fromARGB(255, 255, 29, 51),
        Color.fromARGB(255, 154, 17, 31),
      ]));

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: boxDecoration,
        ),

        const Positioned(
          top: -100,
          left: -20,
          child: _PinkBox())
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  const _PinkBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
        angle: -pi / 5,
        child: Container(
          width: 360,
          height: 360,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80),
              gradient: const LinearGradient(colors: [
                Color.fromARGB(255, 255, 255, 255),
                Color.fromARGB(255, 213, 61, 61),
              ])),
        ));
  }
}

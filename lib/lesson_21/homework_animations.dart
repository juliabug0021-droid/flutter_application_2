import 'dart:math' as math;

import 'package:flutter/material.dart';

class BallAnimation extends StatefulWidget {
  const BallAnimation({super.key});

  @override
  State<BallAnimation> createState() => _BallAnimationState();
}

class _BallAnimationState extends State<BallAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;
  final Tween<double> _rotationAnimation = Tween<double>(begin: 0, end: 3);

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    _controller.addListener(() {
      setState(() {});
    });
    _animation = _rotationAnimation.animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Animated Ball',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight(500),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 102, 46, 22),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 6,
            child: Container(
              color: Colors.blueGrey,

              child: Align(
                alignment: AlignmentGeometry.bottomCenter,
                child: GestureDetector(
                  onTap: _controller.forward,
                  child: Transform.rotate(
                    angle: _animation.value * math.pi,
                    child: Image.asset(
                      'assets/images/basketball.png',
                      width: 50,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.brown, Colors.deepOrange],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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
  late final Animation<double> _rotationAnimation;
  late final Animation<Alignment> _jumpAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    _rotationAnimation = Tween<double>(begin: 0, end: 3).animate(_controller);
    _jumpAnimation = TweenSequence<Alignment>([
      TweenSequenceItem(
        tween: AlignmentTween(
          begin: const Alignment(0, 1.0),
          end: const Alignment(0, -1.0),
        ).chain(CurveTween(curve: Curves.easeOut)),
        weight: 25,
      ),
      TweenSequenceItem(
        tween: ConstantTween(const Alignment(0, -1.0)),
        weight: 5,
      ),
      TweenSequenceItem(
        tween: AlignmentTween(
          begin: const Alignment(0, -1.0),
          end: const Alignment(0, 1.0),
        ).chain(CurveTween(curve: Curves.bounceOut)),
        weight: 70,
      ),
    ]).animate(_controller);
  }

  //
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

              child: GestureDetector(
                onTap: () {
                  _controller.forward(from: 0);
                },
                child: AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) => Align(
                    alignment: _jumpAnimation.value,
                    child: Transform.rotate(
                      angle: _rotationAnimation.value * math.pi,
                      child: Image.asset(
                        'assets/images/basketball.png',
                        width: 70,
                      ),
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

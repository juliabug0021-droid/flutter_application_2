import 'package:flutter/material.dart';

class BallAnimation extends StatefulWidget {
  const BallAnimation({super.key});

  @override
  State<BallAnimation> createState() => _BallAnimationState();
}

class _BallAnimationState extends State<BallAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 6,
            child: Container(
              color: Colors.blueGrey,

              child: Align(
                alignment: AlignmentGeometry.bottomCenter,
                child: Transform.rotate(
                  angle: 10,
                  child: Image.asset('assets/images/basketball.png', width: 50),
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

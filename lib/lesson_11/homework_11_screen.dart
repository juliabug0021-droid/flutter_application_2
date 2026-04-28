import 'package:flutter/material.dart';

void main() {
  runApp(const FlutterWidgetsApp11());
}

class FlutterWidgetsApp11 extends StatelessWidget {
  const FlutterWidgetsApp11({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 8,
          children: [
            Expanded(
              child: Container(
                width: 300,
                height: 150,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                ),
                padding: const EdgeInsets.all(10.0),
                child: const Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 10,
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      Text(
                        'Привіт, Flutter!',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Icon(Icons.star, color: Colors.yellow),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: 300,
              height: 150,
              decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
              ),
              padding: const EdgeInsets.all(10.0),
              child: const Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 10,
                  children: [
                    Icon(Icons.star, color: Colors.yellow),
                    Text(
                      'Привіт, Flutter!',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Icon(Icons.star, color: Colors.yellow),
                  ],
                ),
              ),
            ),
            Container(
              width: 300,
              height: 150,
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
              ),
              padding: const EdgeInsets.all(10.0),
              child: const Align(
                alignment: Alignment.bottomRight,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 10,
                  children: [
                    Icon(Icons.star, color: Colors.yellow),
                    Text(
                      'Привіт, Flutter!',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Icon(Icons.star, color: Colors.yellow),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

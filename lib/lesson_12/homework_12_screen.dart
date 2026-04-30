import 'package:flutter/material.dart';

void main() {
  runApp(const FlutterWidgetsApp12());
}

class FlutterWidgetsApp12 extends StatelessWidget {
  const FlutterWidgetsApp12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: (Colors.white),
        title: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/images/leading.png',
                  width: 9,
                  height: 16,
                ),
              ),
              const SizedBox(width: 8),
              const Text(
                'Оцінка візиту до магазину',
                style: TextStyle(
                  fontFamily: "Silpo Text",
                  color: Colors.black,
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight(600),
                  height: 1.2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

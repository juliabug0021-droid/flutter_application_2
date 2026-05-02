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
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
            ),

            child: Row(
              spacing: 8,
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                ...List.generate(
                  4,
                  (index) => IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/images/star.png', width: 48),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/images/grey star.png', width: 48),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: (Colors.white),
        height: 114,
        //видавало помилку про те, що вміст надто великий, правильно що вказала
        //висоту аппбару? чи можна якось по-іншому?
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 16, 12, 0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: (Colors.blue),
                  minimumSize: const Size(double.infinity, 48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  padding: const EdgeInsets.fromLTRB(24, 10, 24, 10),
                ),
                child: const Text(
                  'Надіслати',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight(600),
                    height: 1.4,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 21),
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Image.asset(
                'assets/images/Home Indicator.png',
                width: 134,
                height: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class FlutterWidgetsApp12 extends StatelessWidget {
  FlutterWidgetsApp12({super.key});
  final textController1 = TextEditingController();
  final textController2 = TextEditingController();
  final _textController3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset('assets/images/leading.png', width: 9, height: 16),
        ),
        backgroundColor: (Colors.white),
        title: const Padding(
          padding: EdgeInsets.all(16.0),

          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Оцінка візиту до магазину',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight(600),
                height: 1.2,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          spacing: 10,
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
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Яку оціночку поставите відділам?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight(600),
                  height: 1.3,
                ),
              ),
            ),
            AskSection(title: 'Випічка', textController: textController1),
            AskSection(
              title: 'Лавка традицій',
              textController: textController2,
            ),
            Container(
              padding: const EdgeInsetsGeometry.fromLTRB(16, 4, 16, 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
              ),
              child: Padding(
                padding: const EdgeInsetsGeometry.fromLTRB(0, 12, 0, 12),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Є що додати?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight(600),
                          height: 1.3,
                        ),
                      ),
                    ),
                    const SizedBox(height: 18),
                    TextField(
                      controller: _textController3,
                      decoration: const InputDecoration(
                        labelText: 'Поділіться загальним враженням',
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(32, 33, 36, 0.54),
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight(400),
                          height: 1.4,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(32, 33, 36, 0.24),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        contentPadding: EdgeInsets.fromLTRB(16, 12, 12, 12),
                      ),
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
            ),
          ],
        ),
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

class AskSection extends StatefulWidget {
  final String title;
  final TextEditingController textController;
  const AskSection({
    super.key,
    required this.title,
    required this.textController,
  });

  @override
  State<AskSection> createState() => _AskSectionState();
}

class _AskSectionState extends State<AskSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(24)),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight(600),
                height: 1.4,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(1),
            decoration: const BoxDecoration(
              color: Color(0xFFF6F8FD),
              borderRadius: BorderRadius.all(Radius.circular(12)),
              border: Border.fromBorderSide(
                BorderSide(color: Color.fromRGBO(19, 19, 30, 0.04), width: 1),
              ),
            ),

            child: Padding(
              padding: const EdgeInsetsGeometry.fromLTRB(12, 8, 12, 8),
              child: Row(
                spacing: 12,
                children: [
                  const Text(
                    'Обслуговування',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Color.fromRGBO(32, 33, 36, 0.87),
                      fontSize: 16,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight(400),
                      height: 1.4,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/images/Rating Dislike.png',
                      width: 24,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/images/Default Like.png',
                      width: 24,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(1),
            decoration: const BoxDecoration(
              color: Color(0xFFF6F8FD),
              borderRadius: BorderRadius.all(Radius.circular(12)),
              border: Border.fromBorderSide(
                BorderSide(color: Color.fromRGBO(19, 19, 30, 0.04), width: 1),
              ),
            ),

            child: Padding(
              padding: const EdgeInsetsGeometry.fromLTRB(12, 8, 12, 8),
              child: Row(
                spacing: 12,
                children: [
                  const Text(
                    'Асортимент',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Color.fromRGBO(32, 33, 36, 0.87),
                      fontSize: 16,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight(400),
                      height: 1.4,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/images/Default Dislike.png',
                      width: 24,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/images/Rating Like.png',
                      width: 24,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: TextField(
              controller: widget.textController,
              decoration: const InputDecoration(
                labelText: 'Розкажіть докладніше',
                labelStyle: TextStyle(
                  color: Color.fromRGBO(32, 33, 36, 0.54),
                  fontSize: 16,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight(400),
                  height: 1.4,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromRGBO(32, 33, 36, 0.24),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                contentPadding: EdgeInsets.fromLTRB(16, 12, 12, 12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FlutterWidgetsApp12 extends StatelessWidget {
  FlutterWidgetsApp12({super.key});
  final textController1 = TextEditingController();
  final textController2 = TextEditingController();
  final textController3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pop(context);
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
                  ...List.generate(5, (index) {
                    if (index == 4) {
                      return IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/images/grey star.png',
                          width: 48,
                        ),
                      );
                    } else {
                      return IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/images/star.png', width: 48),
                      );
                    }
                  }),
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
            AskSectionWithoutLike(
              title: 'Є що додати?',
              textController: textController3,
            ),
          ],
        ),
      ),
      bottomNavigationBar: ColoredBox(
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
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
          const RatingTile(
            title: 'Обслуговування',
            dislikeIcon: 'assets/images/Rating Dislike.png',
            likeIcon: 'assets/images/Default Like.png',
          ),

          const RatingTile(
            title: 'Асортимент',
            dislikeIcon: 'assets/images/Default Dislike.png',
            likeIcon: 'assets/images/Rating Like.png',
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

class RatingTile extends StatelessWidget {
  const RatingTile({
    super.key,
    required this.title,
    required this.likeIcon,
    required this.dislikeIcon,
  });

  final String title;
  final String likeIcon;
  final String dislikeIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFF6F8FD),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color.fromRGBO(19, 19, 30, 0.04)),
      ),
      child: Row(
        spacing: 12,
        children: [
          Text(
            title,
            textAlign: TextAlign.start,
            style: const TextStyle(
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
            icon: Image.asset(dislikeIcon, width: 24),
          ),
          IconButton(onPressed: () {}, icon: Image.asset(likeIcon, width: 24)),
        ],
      ),
    );
  }
}

class AskSectionWithoutLike extends StatelessWidget {
  const AskSectionWithoutLike({
    super.key,
    required this.title,
    required this.textController,
  });
  final String title;
  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsGeometry.fromLTRB(16, 4, 16, 4),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(24)),
      child: Padding(
        padding: const EdgeInsetsGeometry.fromLTRB(0, 12, 0, 12),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style: const TextStyle(
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
              controller: textController,
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
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_lab/lesson_19/screens/rate_app_screen.dart';
import 'package:flutter_lab/router/page_names.dart';
import 'package:go_router/go_router.dart';

class WidgetsScreen extends StatelessWidget {
  const WidgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Widgets'),
        backgroundColor: Colors.blue.shade100,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            NavigationCard(
              title: 'Homework lesson 11',
              description:
                  'Container, SizedBox, Padding, Align, Center, Text, Row, '
                  'Column, Expanded, Buttons, Scroll',
              onTap: () => context.goNamed(ScreenNames.lesson11),
            ),

            NavigationCard(
              title: 'Homework lesson 12',
              description:
                  'Custom Widgets, Stateless vs Stateful Widgets, '
                  'Gesture Detector & InkWel, '
                  'TextFields & TextFormFields',
              onTap: () => context.goNamed(ScreenNames.lesson12),
            ),
            NavigationCard(
              title: 'Homework lesson 13',
              description: 'Training Examples',
              onTap: () => context.goNamed(ScreenNames.lesson13),
            ),
            NavigationCard(
              title: 'Homework lesson 18',
              description: 'State managment',
              onTap: () => context.goNamed(ScreenNames.lesson18),
            ),
            NavigationCard(
              title: 'Homework lesson 19',
              description: 'Rate screen',
              onTap: () async {
                final result = await context.pushNamed(
                  ScreenNames.rateAppLesson19,
                );
                if (result != null && context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    (SnackBar(
                      content: MySnackBar(),
                      duration: Duration(seconds: 3),
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Color(0xFF656565),
                    )),
                  );
                }
              },
            ),
            NavigationCard(
              title: 'Homework lesson 21',
              description: 'Explicit Animations',
              onTap: () => context.goNamed(ScreenNames.lesson21),
            ),
          ],
        ),
      ),
    );
  }
}

class NavigationCard extends StatelessWidget {
  const NavigationCard({
    required this.title,
    required this.description,
    required this.onTap,
    super.key,
  });

  final String title;
  final String description;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue.shade50, Colors.blue.shade100],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                description,
                style: const TextStyle(fontSize: 16, color: Colors.black54),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.arrow_forward, color: Colors.blue.shade700),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

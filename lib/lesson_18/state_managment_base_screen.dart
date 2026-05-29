import 'package:flutter/material.dart';
import 'package:flutter_lab/router/page_names.dart';
import 'package:flutter_lab/widgets_main_screen.dart';
import 'package:go_router/go_router.dart';

class StateManagmentBaseScreen extends StatelessWidget {
  const StateManagmentBaseScreen({super.key});

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
              title: 'HomeworkCubitScreen',
              description: '',
              onTap: () => context.goNamed(ScreenNames.cubitLesson18),
            ),

            NavigationCard(
              title: 'HomeworkBlocScreen',
              description: '',
              onTap: () => context.goNamed(ScreenNames.blocLesson18),
            ),
          ],
        ),
      ),
    );
  }
}

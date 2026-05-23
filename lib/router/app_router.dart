import 'package:flutter_lab/lesson_11/homework_11_screen.dart';
import 'package:flutter_lab/lesson_12/homework_12_screen.dart';
import 'package:flutter_lab/lesson_18/state_managment_base_screen.dart';
import 'package:flutter_lab/widgets_main_screen.dart';
import 'package:flutter_lab/lesson_13/homework_13_screen.dart';
import 'package:flutter_lab/main.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
      routes: [
        GoRoute(
          path: 'widgets',
          builder: (context, state) => WidgetsScreen(),
          routes: [
            GoRoute(
              path: 'lesson_11',
              builder: (context, state) => FlutterWidgetsApp11(),
            ),
            GoRoute(
              path: 'lesson_12',
              builder: (context, state) => FlutterWidgetsApp12(),
            ),
            GoRoute(
              path: 'lesson_13',
              builder: (context, state) => WidgetConstrainsTrainingScreen(),
            ),
            GoRoute(
              path: 'lesson_18',
              builder: (context, state) => StateManagmentBaseScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);

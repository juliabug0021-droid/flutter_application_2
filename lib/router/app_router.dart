import 'package:flutter_lab/lesson_11/homework_11_screen.dart';
import 'package:flutter_lab/lesson_12/homework_12_screen.dart';
import 'package:flutter_lab/lesson_18/homework_%D1%81ubit/homework_cubit_screen.dart';
import 'package:flutter_lab/lesson_18/homework_bloc/homework_bloc_screen.dart';
import 'package:flutter_lab/lesson_18/state_managment_base_screen.dart';
import 'package:flutter_lab/lesson_19/screens/rate_app_screen.dart';
import 'package:flutter_lab/router/page_names.dart';
import 'package:flutter_lab/widgets_main_screen.dart';
import 'package:flutter_lab/lesson_13/homework_13_screen.dart';
import 'package:flutter_lab/main.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: ScreenNames.home,
      builder: (context, state) => HomeScreen(),
      routes: [
        GoRoute(
          path: 'widgets',
          name: ScreenNames.widgets,
          builder: (context, state) => WidgetsScreen(),
          routes: [
            GoRoute(
              path: 'lesson_11',
              name: ScreenNames.lesson11,
              builder: (context, state) => FlutterWidgetsApp11(),
            ),
            GoRoute(
              path: 'lesson_12',
              name: ScreenNames.lesson12,
              builder: (context, state) => FlutterWidgetsApp12(),
            ),
            GoRoute(
              path: 'lesson_13',
              name: ScreenNames.lesson13,
              builder: (context, state) => WidgetConstrainsTrainingScreen(),
            ),
            GoRoute(
              path: 'lesson_18',
              name: ScreenNames.lesson18,
              builder: (context, state) => StateManagmentBaseScreen(),
              routes: [
                GoRoute(
                  path: 'cubit',
                  name: ScreenNames.cubitLesson18,
                  builder: (context, state) => HomeworkCubitScreen(),
                ),
                GoRoute(
                  path: 'bloc',
                  name: ScreenNames.blocLesson18,
                  builder: (context, state) => HomeworkBlocScreen(),
                ),
              ],
            ),
            GoRoute(
              path: 'rate_app',
              name: ScreenNames.rateAppLesson19,
              builder: (context, state) => RateAppScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);

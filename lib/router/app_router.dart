import 'package:flutter_lab/lesson_11/homework_11_screen.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final appRouter = GoRouter(
  routes: [GoRoute(path: '/', builder: (context, state) => HomeScreen())],
);

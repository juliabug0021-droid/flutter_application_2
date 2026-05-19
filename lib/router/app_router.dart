import 'package:flutter_lab/main.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final appRouter = GoRouter(
  routes: [GoRoute(path: '/', builder: (context, state) => HomeScreen())],
);

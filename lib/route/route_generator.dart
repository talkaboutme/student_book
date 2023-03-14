import 'package:flutter/material.dart';

import '../screens/add_student_screen.dart';
import '../screens/home_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/add_student':
        return MaterialPageRoute(builder: (_) => const AddStudentScreen());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('no Route'),
            centerTitle: true,
          ),
          body: const Center(
            child: Text(
              'sorry no route was found',
              style: TextStyle(
                color: Colors.red,
                fontSize: 16,
              ),
            ),
          ),
        );
      },
    );
  }
}

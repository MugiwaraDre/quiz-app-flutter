import 'package:flutter/material.dart';
import 'package:muggis_quiz/login/login.dart';
import 'package:muggis_quiz/profile/profile.dart';
import 'package:muggis_quiz/services/auth.dart';

import 'package:muggis_quiz/shared/shared.dart';
import 'package:muggis_quiz/topic/topics.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: AuthService().userStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingScreen();
        } else if (snapshot.hasError) {
          return const Center(
            child: ErrorMessage(),
          );
        } else if (snapshot.hasData) {
          return const TopicsScreen();
        } else {
          return const LoginScreen();
        }
      },
    );
  }
}

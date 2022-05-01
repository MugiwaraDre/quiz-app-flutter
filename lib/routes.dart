import 'package:muggis_quiz/about/about.dart';
import 'package:muggis_quiz/home/home.dart';
import 'package:muggis_quiz/login/login.dart';
import 'package:muggis_quiz/profile/profile.dart';
import 'package:muggis_quiz/topic/topics.dart';

var appRoutes = {
  '/': (context) => const HomeScreen(),
  '/login': (context) => const LoginScreen(),
  '/topics': (context) => const TopicsScreen(),
  '/profile': (context) => const ProfileScreen(),
  '/about': (context) => const AboutScreen(),
};

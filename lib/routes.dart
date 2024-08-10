import 'about/about.dart';
import 'home/home.dart';
import 'login/login.dart';
import 'profile/profile.dart';
import 'topics/topics.dart';

class Routes {
  static const home = '/';
  static const login = '/login';
  static const topics = '/topics';
  static const profile = '/profile';
  static const about = '/about';
}

var appRoutes = {
  Routes.home: (context) => const HomeScreen(),
  Routes.login: (context) => const LoginScreen(),
  Routes.topics: (context) => const TopicsScreen(),
  Routes.profile: (context) => const ProfileScreen(),
  Routes.about: (context) => const AboutScreen(),
};

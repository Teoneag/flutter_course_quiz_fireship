import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quiz_fireship_course/services/auth.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const FlutterLogo(size: 150),
            Flexible(
              child: LoginButton(
                icon: FontAwesomeIcons.userNinja,
                text: 'Continue as Guest',
                loginMethod: AuthService().anonymousLogin,
                color: Colors.deepPurple,
              ),
            ),
            LoginButton(
              icon: FontAwesomeIcons.google,
              text: 'Sign in with Google',
              loginMethod: AuthService().googleLogin,
              color: Colors.deepPurple,
            ),
            LoginButton(
              icon: FontAwesomeIcons.apple,
              text: 'Sign in with Apple',
              loginMethod: AuthService().appleLogin,
              color: Colors.deepPurple,
            ),
          ],
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function loginMethod;
  final Color color;

  const LoginButton({
    super.key,
    required this.icon,
    required this.text,
    required this.loginMethod,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton.icon(
        label: Text(text),
        onPressed: () => loginMethod(),
        icon: Icon(
          icon,
          color: Colors.white,
          size: 20,
        ),
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(24),
          backgroundColor: color,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> signInAnonymously() async {
    try {
      await _auth.signInAnonymously();
      // ここでホーム画面への遷移は必要ありません。
      // `AuthWrapper`が自動的にログイン状態を監視して画面を変更します。
    } catch (e) {
      print('Failed to sign in anonymously: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: signInAnonymously,
          child: const Text('Sign in Anonymously'),
        ),
      ),
    );
  }
}

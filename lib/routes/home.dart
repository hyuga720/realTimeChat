import 'package:flutter/material.dart';
import '../header.dart';

class Home extends StatelessWidget {

  final String screenName = 'ホーム';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(headerTitle: screenName),
      body: Center(
        child: Text(screenName),
      ),
    );
  }
}
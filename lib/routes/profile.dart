import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Providerをインポート
import '../header.dart';
import 'user_provider.dart'; // UserProviderをインポート

class Profile extends StatelessWidget {
  final String screenName = 'プロフィール';

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context); // UserProviderを取得

    return Scaffold(
      appBar: Header(headerTitle: screenName),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Current User ID: ${userProvider.userId}'),
            SizedBox(height: 20),
            TextField(
              onSubmitted: (newUserId) {
                userProvider.setUserId(newUserId); // ユーザーIDを更新
              },
              decoration: InputDecoration(
                labelText: 'Enter new User ID',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

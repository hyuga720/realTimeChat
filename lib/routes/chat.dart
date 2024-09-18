import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart'; // Providerをインポート
import '../header.dart';
import 'user_provider.dart'; // UserProviderをインポート

class Chat extends StatelessWidget {
  final String screenName = 'チャット';
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final userId = Provider.of<UserProvider>(context).userId; // ユーザーIDを取得

    return Scaffold(
      appBar: Header(headerTitle: screenName),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('chatRooms')
                  .doc('defaultRoom')
                  .collection('messages')
                  .orderBy('timestamp', descending: true)
                  .snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) return CircularProgressIndicator();
                final messages = snapshot.data!.docs;

                return ListView.builder(
                  reverse: true,
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    var message = messages[index];
                    return ListTile(
                      title: Text(message['message']),
                      subtitle: Text('User: ${message['userId']}'),
                    );
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      labelText: 'Enter your message',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    _sendMessage(userId); // メッセージ送信時にユーザーIDを使用
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _sendMessage(String userId) {
    if (_controller.text.isNotEmpty) {
      FirebaseFirestore.instance.collection('chatRooms').doc('defaultRoom').collection('messages').add({
        'message': _controller.text,
        'userId': userId, // 取得したユーザーIDを使用
        'timestamp': FieldValue.serverTimestamp(),
      });
      _controller.clear();
    }
  }
}

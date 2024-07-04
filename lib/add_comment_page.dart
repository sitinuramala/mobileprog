import 'package:flutter/material.dart';

class AddCommentPage extends StatefulWidget {
  @override
  _AddCommentPageState createState() => _AddCommentPageState();
}

class _AddCommentPageState extends State<AddCommentPage> {
  final TextEditingController _commentController = TextEditingController();

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambahkan Komentar'),
        backgroundColor: const Color.fromARGB(255, 133, 206, 210),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _commentController,
              decoration: InputDecoration(
                labelText: 'Komentar',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                _saveComment();
              },
              child: Text('Simpan Komentar'),
            ),
          ],
        ),
      ),
    );
  }

  void _saveComment() {
    String commentText = _commentController.text.trim();
    if (commentText.isNotEmpty) {
      // Simpan komentar ke tempat penyimpanan (misalnya, database atau state management)
      Navigator.pop(
          context, commentText); // Mengembalikan komentar yang disimpan
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Kesalahan'),
          content: Text('Komentar tidak boleh kosong.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }
}

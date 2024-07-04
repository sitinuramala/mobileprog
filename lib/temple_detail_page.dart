import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'add_comment_page.dart'; // Pastikan untuk mengganti ini sesuai dengan nama file yang sesuai

// Contoh definisi Comment dan CommentProvider
class Comment {
  final String content;
  final DateTime timestamp;

  Comment({required this.content, required this.timestamp});
}

class CommentProvider extends ChangeNotifier {
  List<Comment> _comments = [];

  List<Comment> get comments => _comments;

  void addComment(Comment comment) {
    _comments.add(comment);
    notifyListeners();
  }
}

class TempleDetailPage extends StatefulWidget {
  final Map<String, String> temple;

  TempleDetailPage({required this.temple});

  @override
  _TempleDetailPageState createState() => _TempleDetailPageState();
}

class _TempleDetailPageState extends State<TempleDetailPage> {
  @override
  Widget build(BuildContext context) {
    var commentProvider = Provider.of<CommentProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.temple['name']!),
        backgroundColor: const Color.fromARGB(255, 133, 206, 210),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  widget.temple['image']!,
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                  errorBuilder: (BuildContext context, Object exception,
                      StackTrace? stackTrace) {
                    return Center(child: Text('Image not found'));
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                widget.temple['description']!,
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddCommentPage(),
                  ),
                );
                if (result != null) {
                  commentProvider.addComment(Comment(
                    content: result,
                    timestamp: DateTime.now(),
                  ));
                }
              },
              child: Text('Tambahkan Komentar'),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: commentProvider.comments.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(commentProvider.comments[index].content),
                  subtitle: Text(commentProvider.comments[index].timestamp
                      .toString()), // Atur tampilan yang sesuai untuk komentar
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

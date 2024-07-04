import 'package:flutter/material.dart';

class UserHomePage extends StatelessWidget {
  final Function(String, String) onCommentSubmitted;

  UserHomePage({required this.onCommentSubmitted});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to the User Home Page!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CandiListPage(
                          candiType: 'Hindu',
                          onCommentSubmitted: onCommentSubmitted)),
                );
              },
              child: Text('Candi Hindu'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CandiListPage(
                          candiType: 'Buddha',
                          onCommentSubmitted: onCommentSubmitted)),
                );
              },
              child: Text('Candi Buddha'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CandiListPage(
                          candiType: 'Islam',
                          onCommentSubmitted: onCommentSubmitted)),
                );
              },
              child: Text('Candi Islam'),
            ),
          ],
        ),
      ),
    );
  }
}

class CandiListPage extends StatelessWidget {
  final String candiType;
  final Function(String, String) onCommentSubmitted;

  CandiListPage({required this.candiType, required this.onCommentSubmitted});

  // Fungsi sementara untuk mendapatkan data berdasarkan jenis candi
  List<Map<String, dynamic>> _getCandiList() {
    // Misalnya, dapat diganti dengan data yang sesuai dari sumber data Anda
    if (candiType == 'Hindu') {
      return [
        {
          'name': 'Candi Prambanan',
          'image': 'assets/candi_prambanan.jpg',
          'description':
              'Candi Hindu terbesar di Indonesia, terletak di Yogyakarta.'
        },
        {
          'name': 'Candi Borobudur',
          'image': 'assets/candi_borobudur.jpg',
          'description':
              'Candi Buddha terbesar di dunia, terletak di Magelang, Jawa Tengah.'
        },
        // Tambahkan lebih banyak candi Hindu jika diperlukan
      ];
    } else if (candiType == 'Buddha') {
      return [
        {
          'name': 'Candi Mendut',
          'image': 'assets/candi_mendut.jpg',
          'description':
              'Candi Buddha yang terletak tidak jauh dari Candi Borobudur.'
        },
        // Tambahkan lebih banyak candi Buddha jika diperlukan
      ];
    } else if (candiType == 'Islam') {
      return [
        {
          'name': 'Masjid Istiqlal',
          'image': 'assets/masjid_istiqlal.jpg',
          'description': 'Masjid terbesar di Indonesia, terletak di Jakarta.'
        },
        // Tambahkan lebih banyak masjid Islam jika diperlukan
      ];
    }
    return []; // Return kosong jika tidak ada jenis yang sesuai
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> candiList = _getCandiList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Candi $candiType'),
      ),
      body: ListView.builder(
        itemCount: candiList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CandiDetailPage(
                        candi: candiList[index],
                        onCommentSubmitted: onCommentSubmitted)),
              );
            },
            child: Card(
              elevation: 5,
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: ListTile(
                leading: Image.asset(
                  candiList[index]['image'],
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
                title: Text(candiList[index]['name']),
              ),
            ),
          );
        },
      ),
    );
  }
}

class CandiDetailPage extends StatelessWidget {
  final Map<String, dynamic> candi;
  final Function(String, String) onCommentSubmitted;

  CandiDetailPage({required this.candi, required this.onCommentSubmitted});

  @override
  Widget build(BuildContext context) {
    List<String> comments = ['Comment 1', 'Comment 2', 'Comment 3']; // Placeholder for comments

    return Scaffold(
      appBar: AppBar(
        title: Text(candi['name']),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            candi['image'],
            height: 200,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              candi['description'],
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: comments.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(comments[index]),
                  // Add more details like username, timestamp if available
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman komentar
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CommentPage(
                            candiName: candi['name'],
                            onCommentSubmitted: onCommentSubmitted,
                          )),
                );
              },
              child: Text('Add Comment'),
            ),
          ),
        ],
      ),
    );
  }
}

class CommentPage extends StatefulWidget {
  final String candiName;
  final Function(String, String) onCommentSubmitted;

  CommentPage({required this.candiName, required this.onCommentSubmitted});

  @override
  _CommentPageState createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  final TextEditingController _commentController = TextEditingController();
  List<String> comments = ['Comment 1', 'Comment 2', 'Comment 3']; // Placeholder for comments

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comments for ${widget.candiName}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: comments.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(comments[index]),
                    // Add more details like username, timestamp if available
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _commentController,
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'Enter your comment...',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Kirim komentar ke halaman sebelumnya
                String comment = _commentController.text;
                widget.onCommentSubmitted(widget.candiName, comment);
                comments.add(comment); // Tambahkan komentar ke daftar komentar
                _commentController.clear(); // Bersihkan field komentar
                setState(() {}); // Refresh UI untuk menampilkan komentar baru
              },
              child: Text('Submit Comment'),
            ),
          ],
        ),
      ),
    );
  }
}

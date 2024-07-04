import 'package:flutter/material.dart';

class ManageCommentsPage extends StatefulWidget {
  @override
  _ManageCommentsPageState createState() => _ManageCommentsPageState();
}

class _ManageCommentsPageState extends State<ManageCommentsPage> {
  List<String> comments = ['Komentar 1', 'Komentar 2', 'Komentar 3'];
  List<String> displayedComments = [];
  List<String> newComments = ['Komentar Baru 1', 'Komentar Baru 2'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Manage Comments"),
        backgroundColor: const Color.fromARGB(255, 133, 206, 210),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Komentar Baru"),
            tileColor: Colors.grey[300],
          ),
          ...newComments.map((comment) {
            return ListTile(
              title: Text(comment),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.check),
                    onPressed: () {
                      setState(() {
                        displayedComments.add(comment);
                        newComments.remove(comment);
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Komentar disetujui')),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      setState(() {
                        newComments.remove(comment);
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Komentar dihapus')),
                      );
                    },
                  ),
                ],
              ),
            );
          }).toList(),
          ListTile(
            title: Text("Komentar Ditampilkan dihalaman user"),
            tileColor: Colors.grey[300],
          ),
          ...displayedComments.map((comment) {
            return ListTile(
              title: Text(comment),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  setState(() {
                    displayedComments.remove(comment);
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text('Komentar dihapus dari halaman users')),
                  );
                },
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}

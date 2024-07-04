import 'package:flutter/material.dart';
import 'manage_comments_page.dart';
import 'manage_users_page.dart';

class AdminHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Admin Main Menu"),
        backgroundColor: const Color.fromARGB(255, 133, 206, 210),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selamat Datang! Anda saat ini berada di halaman admin',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Card(
                elevation: 5,
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ManageCommentsPage()),
                    );
                  },
                  title: Text('Kelola Komentar',
                      style: TextStyle(fontSize: 18, color: Colors.orange)),
                  leading: Icon(Icons.comment, size: 40, color: Colors.orange),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.orange),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Card(
                elevation: 5,
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ManageUsersPage()),
                    );
                  },
                  title: Text('Kelola Candi',
                      style: TextStyle(fontSize: 18, color: Colors.green)),
                  leading: Icon(Icons.people, size: 40, color: Colors.green),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.green),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ViewReportsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("View Reports"),
        backgroundColor: const Color.fromARGB(255, 133, 206, 210),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'View Reports Page',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika untuk aksi melihat laporan
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Melihat laporan')),
                );
              },
              child: const Text('Lihat Laporan'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika untuk aksi unduh laporan
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Mengunduh laporan')),
                );
              },
              child: const Text('Unduh Laporan'),
            ),
          ],
        ),
      ),
    );
  }
}

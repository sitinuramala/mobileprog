import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserPage extends StatelessWidget {
  final List<Map<String, String>> candiList;

  UserPage({required this.candiList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Page'),
      ),
      body: ListView.builder(
        itemCount: candiList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(
              candiList[index]['image']!,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
              errorBuilder: (BuildContext context, Object exception,
                  StackTrace? stackTrace) {
                return Icon(
                    Icons.error); // Placeholder jika gambar tidak ditemukan
              },
            ),
            title: Text(candiList[index]['name']!),
            onTap: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UserCandiDetailPage(
                    name: candiList[index]['name']!,
                    image: candiList[index]['image']!,
                  ),
                ),
              );
              if (result != null && result is Map<String, String>) {
                // Handle any result if needed
              }
            },
          );
        },
      ),
    );
  }
}

class UserCandiDetailPage extends StatelessWidget {
  final String name;
  final String image;

  UserCandiDetailPage({required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Column(
        children: [
          Image.asset(
            image,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          // Tambahkan detail candi dan form untuk memberikan ulasan
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'customer_page.dart';

class MainPage extends StatelessWidget {
  // Tambahkan properti untuk menyimpan daftar candi
  List<String> candiList = ['Candi Hindu', 'Candi Buddha', 'Candi Islam'];

  // Fungsi untuk mengelola perubahan pada daftar candi
  void _handleCandiListChanged(List<String> newCandiList) {
    // Lakukan sesuatu dengan daftar candi yang baru, misalnya simpan ke state atau lakukan pembaruan UI
    print('Updated Candi List: $newCandiList');
    // Contoh: Simpan ke state jika menggunakan StatefulWidget
    // setState(() {
    //   this.candiList = newCandiList;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Dashboard",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 133, 206, 210),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Informasi atau statistik penting
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Selamat datang!',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Anda dapat mengelola berbagai aspek aplikasi di sini.',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Navigasi ke halaman-halaman penting
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 1.5,
                children: [
                  _buildMenuItem(context, "Manage Users", Icons.people, () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ManageUsersPage(
                                onCandiListChanged: _handleCandiListChanged,
                              )),
                    );
                  }),
                  // Contoh memanggil _handleCandiListChanged saat menavigasi ke halaman Candi Hindu
                  _buildMenuItem(context, "Candi Hindu", Icons.location_city,
                      () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CandiHinduPage(
                                onCandiListChanged: _handleCandiListChanged,
                              )),
                    );
                  }),
                  // Contoh memanggil _handleCandiListChanged saat menavigasi ke halaman Candi Buddha
                  _buildMenuItem(context, "Candi Buddha", Icons.location_city,
                      () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CandiBuddhaPage(
                                onCandiListChanged: _handleCandiListChanged,
                              )),
                    );
                  }),
                  // Contoh memanggil _handleCandiListChanged saat menavigasi ke halaman Candi Islam
                  _buildMenuItem(context, "Candi Islam", Icons.location_city,
                      () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CandiIslamPage(
                                onCandiListChanged: _handleCandiListChanged,
                              )),
                    );
                  }),
                ],
              ),
            ),
            // Navigasi ke Halaman Customer
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CustomerPage()),
                );
              },
              child: Container(
                width: double.infinity,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  margin: const EdgeInsets.all(10),
                  color: const Color.fromARGB(255, 100, 200, 210),
                  elevation: 20,
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "Customer Page",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(
      BuildContext context, String title, IconData icon, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        margin: const EdgeInsets.all(10),
        color: Colors.blueAccent,
        elevation: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: Colors.white),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

// Example manage users page
class ManageUsersPage extends StatelessWidget {
  final Function(List<String>) onCandiListChanged;

  const ManageUsersPage({Key? key, required this.onCandiListChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Manage Users"),
        backgroundColor: const Color.fromARGB(255, 133, 206, 210),
      ),
      body: Center(
        child: Text(
          'Manage Users Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

// Example Candi pages with onCandiListChanged callback
class CandiHinduPage extends StatelessWidget {
  final Function(List<String>) onCandiListChanged;

  const CandiHinduPage({Key? key, required this.onCandiListChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Candi Hindu"),
        backgroundColor: const Color.fromARGB(255, 133, 206, 210),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Candi Hindu Page',
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () {
                // Contoh perubahan daftar candi
                List<String> updatedList = [
                  'Candi Hindu',
                  'Candi Buddha',
                  'Candi Islam',
                  'New Candi'
                ];
                // Panggil fungsi onCandiListChanged dengan daftar candi yang baru
                onCandiListChanged(updatedList);
              },
              child: Text('Add New Candi'),
            ),
          ],
        ),
      ),
    );
  }
}

class CandiBuddhaPage extends StatelessWidget {
  final Function(List<String>) onCandiListChanged;

  const CandiBuddhaPage({Key? key, required this.onCandiListChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Candi Buddha"),
        backgroundColor: const Color.fromARGB(255, 133, 206, 210),
      ),
      body: Center(
        child: Text(
          'Candi Buddha Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class CandiIslamPage extends StatelessWidget {
  final Function(List<String>) onCandiListChanged;

  const CandiIslamPage({Key? key, required this.onCandiListChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Candi Islam"),
        backgroundColor: const Color.fromARGB(255, 133, 206, 210),
      ),
      body: Center(
        child: Text(
          'Candi Islam Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Candi App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

// Example customer page
class CustomerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Customer Page"),
        backgroundColor: const Color.fromARGB(255, 133, 206, 210),
      ),
      body: Center(
        child: Text(
          'Customer Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'customer_page.dart';
import 'candi_hindu.dart';
import 'candi_buddha.dart';
import 'candi_islam.dart';
import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Daftar Candi",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 133, 206, 210),
      ),
      drawer: AppDrawer(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Candi Hindu
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CandiHinduPage()),
                );
              },
              child: Container(
                width: double.infinity,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  margin: const EdgeInsets.all(10),
                  color: const Color.fromARGB(255, 130, 216, 223),
                  elevation: 20,
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "Candi Hindu",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30),
                    ),
                  ),
                ),
              ),
            ),
            // Candi Buddha
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CandiBuddhaPage()),
                );
              },
              child: Container(
                width: double.infinity,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  margin: const EdgeInsets.all(10),
                  color: const Color.fromARGB(255, 138, 211, 216),
                  elevation: 20,
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "Candi Buddha",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30),
                    ),
                  ),
                ),
              ),
            ),
            // Candi Islam
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CandiIslamPage()),
                );
              },
              child: Container(
                width: double.infinity,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  margin: const EdgeInsets.all(10),
                  color: const Color.fromARGB(255, 127, 205, 210),
                  elevation: 20,
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "Candi Islam",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30),
                    ),
                  ),
                ),
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
}

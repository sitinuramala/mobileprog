import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'admin_home_page.dart';
import 'manage_users_page.dart';
import 'manage_comments_page.dart';

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
      home: MainPage(), // Menggunakan MainPage sebagai home
      routes: {
        '/admin': (context) => AdminHomePage(),
        '/user': (context) => CandiCategoriesPage(),
      },
    );
  }
}

class MainPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Candi App"),
        backgroundColor: Color.fromARGB(255, 248, 248, 176),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'BUMI NUSANTARA',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Handle login logic here
                  Navigator.pushNamed(context, '/admin');
                },
                child: const Text('Login'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/user');
                },
                child: const Text('Jelajahi Bumi Nusantara Terutama Candi!!!!'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Definisikan halaman-halaman lainnya seperti AdminHomePage, HomePage, dan CandiCategoriesPage di sini.

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
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ManageCommentsPage()),
                );
              },
              child: const Text('Manage Comments'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ManageUsersPage()),
                );
              },
              child: const Text('Manage Users'),
            ),
          ],
        ),
      ),
    );
  }
}

class CandiCategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Candi Categories"),
        backgroundColor: Color.fromARGB(255, 244, 241, 191),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          _buildCategoryItem(
            context,
            'Buddha',
            [
              {
                'name': 'Candi Mendhut',
                'description':
                    'Candi Mendut didirikan pada masa pemerintahan Raja Indra dari Dinasti Syailendra. Berdasarkan sebuah prasasti yang ditemukan, Raja Indra bersama dengan putrinya mendirikan sebuah bangunan suci yang dinamai dengan Srimad Wenuwana yang dimana terletak diJalan Mayor Kusen, Desa mendut, Kecamatan Mungkid, Kabupaten Magelang. Lokasi Candi Mendut sangat mudah ditemukan karena berada hanya sekitar 3 kilometer dari Candi Borobudur....',
                'image': 'assets/candi mendhut.jpg',
              },
              {
                'name': 'Candi Pawon',
                'description':
                    'Candi Pawon merupakan salah satu candi peninggalan agama Buddha yang berada di Kabupaten Magelang, Jawa Tengah. Candi Pawon ini diperkirakan dibangun bersamaan pada pertengan abad ke 8 Masehi yaitu bersama dengan Candi Borobudur, Candi Mendut dan Candi Prambanan. Hingga saat ini, Candi Pawon masih berdiri dengan kokoh dari masa Kerajaan Mataram Kuno sampai sekarang, serta masih digunakan untuk upacara Waisak umat Buddha...',
                'image': 'assets/candi pawon.jpg',
              },
              {
                'name': 'Candi Sewu',
                'description':
                    'Candi Sewu sendiri didirikan pada masa Dinasti Syailendra. Pembangunan candi diawali oleh Rakai Panangkaran dari Kerajaan Mataram Kuno, kemudian dilanjutkan oleh Rakai Pikatan di masa Dinasti Sanjaya. Candi Sewu mempunyai corak Buddha dan pada masa Dinasti Syailendra, candi ini dijadikan pusat ibadah umat Buddha....',
                'image': 'assets/candi sewu.jpg',
              },
              {
                'name': 'Candi Kalasan',
                'description':
                    'Candi Kalasan adalah salah satu peninggalan Kerajaan Mataram Kuno yang ada di Yogyakarta. Candi ini terletak di Dusun Kalibening, Desa Tirtomartani, Kecamatan Kalasan, Kabupaten Sleman, Yogyakarta. Candi Kalasan bercorak Buddha, yang dibangun sebagai tempat pemujaan Dewi Tara...',
                'image': 'assets/candi kalasan.jpg',
              },
            ],
          ),
          _buildCategoryItem(
            context,
            'Islam',
            [
              {
                'name': 'Masjid Ternate',
                'description':
                    'Masjid Sultan Ternate adalah sebuah masjid yang terletak di kawasan Jalan Sultan Khairun, Kelurahan Soa Sio, Kecamatan Ternate Utara, Kota Ternate, Provinsi Maluku Utara. Masjid ini menjadi bukti keberadaan Kesultanan Islam pertama di kawasan timur Nusantara ini...',
                'image': 'assets/masjid ternate.jpg',
              },
              {
                'name': 'Masjid Agung Banten',
                'description':
                    'Masjid ini dibangun dengan gaya arsitektur Jawa pada masa pemerintahan Sultan Maulana Yusuf–Sultan ketiga Kesultanan Banten–pada tahun 1556. Sebuah pawestren (aula samping masjid yang digunakan untuk musala perempuan) bergaya Jawa ditambahkan pada masa pemerintahan Maulana Muhammad (1580-1586)....',
                'image': 'assets/masjid agung banten.jpg',
              },
              {
                'name': 'Masjid Agung Demak',
                'description':
                    'Masjid ini terletak di kampung Kauman, Kelurahan Bintoro, Kecamatan Demak, Kabupaten Demak, Jawa Tengah. Masjid Agung Demak juga menjadi ikon wisata religi di Kabupaten Demak dengan makam Sunan Kalijaga, di Kadilangu Demak. Masjid Agung Demak juga berdiri megah ditengah pusat atau jantung kota Kabupaten Demak....',
                'image': 'assets/masjid agung demak.jpg',
              },
              {
                'name': 'Masjid Agung Menara Kudus',
                'description':
                    'Menurut sejarah, masjid Kudus dibangun oleh Sunan Kudus pada tahun 956 H. Hal ini terlihat dari batu tulis yang terletak di Pengimaman masjid, yang bertuliskan dan berbentuk bahasa Arab, yang sukar dibaca karena telah banyak huruf-huruf yang rusak....',
                'image': 'assets/masjid menara kudus.jpg',
              },
            ],
          ),
          _buildCategoryItem(
            context,
            'Hindu',
            [
              {
                'name': 'Candi Prambanan',
                'description':
                    'Pembangunan candi Hindu ini dimulai oleh Rakai Pikatan sebagai tandingan candi Buddha Borobudur dan juga candi Sewu letaknya tak jauh dari Prambanan. Bangunan ini pertama kali dibangun sekitar tahun 850 Masehi oleh Rakai Pikatan dan secara berkelanjutan disempurnakan oleh Raja Lokapala dan Raja Balitung Maha Sambu Letaknya sangat unik, Candi Prambanan terletak di wilayah administrasi desa Bokoharjo, Prambanan, Sleman, sedangkan pintu masuk kompleks Candi Prambanan terletak di wilayah adminstrasi desa Tlogo, Prambanan, Klaten Jawa Tengah....',
                'image': 'assets/candi prambanan.jpg',
              },
              {
                'name': 'Candi Borobudur',
                'description':
                    'Borobudur pertama kali dibangun atas inisiatif Raja Samaratungga sekitar tahun 824 Masehi. Meski begitu, Candi Borobudur selesai dibangun menjelang tahun 900 Masehi pada masa pemerintahan Ratu Pramudawardhani, putri Raja Samaratungga. Arsitek yang berjasa dalam merancang candi tersebut ialah Gunadharma Gubernur Jenderal Sir Thomas Stamford Raffles mendengar adanya penemuan benda purbakala berukuran raksasa di desa Bumisegoro, Magelang...',
                'image': 'assets/candi borobudur.jpg',
              },
              {
                'name': 'Candi Arjuna',
                'description':
                    'Candi Arjuna diperkirakan sebagai candi tertua, candi ini diperkirakan dibangun pada abad 8 Masehi oleh Dinasti Sanjaya dari Mataram Kuno. Di kompleks ini juga terdapat Candi Semar, Candi Srikandi, Candi Puntadewa, dan Candi Sembadra. Candi Arjuna terletak paling utara dari deretan percandian di kompleks tersebut...',
                'image': 'assets/candi arjuna.jpg',
              },
              {
                'name': 'Candi Sukuh',
                'description':
                    'Sejarah Candi Sukuh Candi Sukuh adalah Candi Hindu yang merupakan salah satu wisata Budaya di Kabupaten Karanganyar yang terletak di Tambak, Berjo, Kec. Ngargoyoso, Kabupaten Karanganyar, Jawa Tengah 57793. Jam operasional Candi Sukuh buka pada jam 07.00 – 17.00 WIB...',
                'image': 'assets/candi sukuh.jpg',
              },
              {
                'name': 'Candi Sambisari',
                'description':
                    'Sejarah Candi Sambisari Candi Sambisari ditemukan secara tidak sengaja oleh petani yang sedang mencangkul sawahnya sekitar tahun 1966, kemudian dilakukan penyelamatan pada tahun itu juga (tahun 1966) oleh Kantor Wilayah Purbakala I LPPN Prambanan...',
                'image': 'assets/candi sambisari.jpg',
              },
              {
                'name': 'Candi Gedongsongo',
                'description':
                    'Sejarah Candi Gedongsongo Candi Gedong Songo (bahasa Jawa: ꦕꦤ꧀ꦝꦶꦒꦼꦝꦺꦴꦁꦱꦔ, translit. Candhi Gedhong Sanga) adalah nama sebuah kompleks bangunan candi peninggalan budaya Hindu yang terletak di desa Candi, Kecamatan Bandungan, Kabupaten Semarang, Jawa Tengah, Indonesia tepatnya di lereng Gunung Ungaran...',
                'image': 'assets/candi gedongsongo.jpg',
              },
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryItem(BuildContext context, String category,
      List<Map<String, String>> temples) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16, top: 16, bottom: 8),
          child: Text(
            category,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: temples.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          TempleDetailPage(temple: temples[index]),
                    ),
                  );
                },
                child: Card(
                  margin: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            temples[index]['image']!,
                            width: 150,
                            fit: BoxFit.cover,
                            errorBuilder: (BuildContext context,
                                Object exception, StackTrace? stackTrace) {
                              return Center(child: Text('Image not found'));
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          temples[index]['name']!,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class TempleDetailPage extends StatefulWidget {
  final Map<String, String> temple;

  TempleDetailPage({required this.temple});

  @override
  _TempleDetailPageState createState() => _TempleDetailPageState();
}

class _TempleDetailPageState extends State<TempleDetailPage> {
  List<String> comments = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.temple['name']!),
        backgroundColor: Color.fromARGB(255, 236, 245, 188),
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
                  setState(() {
                    comments.add(result);
                  });
                }
              },
              child: Text('Tambahkan Komentar'),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: comments.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(comments[index]),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

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
        backgroundColor: Color.fromARGB(255, 245, 241, 190),
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
                Navigator.pop(context, _commentController.text);
              },
              child: Text('Simpan Komentar'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ManageUsersPage extends StatefulWidget {
  @override
  _ManageUsersPageState createState() => _ManageUsersPageState();
}

class _ManageUsersPageState extends State<ManageUsersPage> {
  Map<String, List<Map<String, String>>> templeCategories = {
    'Candi Buddha': [
      {
        'name': 'Candi Borobudur',
        'history':
            'Candi Borobudur adalah salah satu keajaiban dunia yang mempesona, terletak di tengah-tengah keindahan alam antara Gunung Merbabu dan Gunung Merapi, di Magelang, Jawa Tengah. Dibangun pada awal abad ke-9 Masehi oleh Dinasti Syailendra, candi ini tidak hanya menjadi ikon arsitektur Buddha, tetapi juga warisan budaya yang tak ternilai harganya bagi Indonesia dan dunia.......',
        'image':
            'candi borobudur.jpg', // Ubah path sesuai dengan struktur folder assets
      },
      {
        'name': 'Candi Mendhut',
        'history':
            'Candi Mendut, terletak di desa Mendut, kecamatan Mungkid, Kabupaten Magelang, Jawa Tengah, Indonesia, adalah sebuah peninggalan bersejarah yang mencerminkan kejayaan agama Buddha pada abad ke-9 Masehi di Jawa. Dibangun pada masa pemerintahan Dinasti Syailendra oleh Raja Indra, candi ini awalnya didedikasikan untuk menghormati Buddha..',
        'image':
            'candi mendhut.jpg', // Ubah path sesuai dengan struktur folder assets
      },
      {
        'name': 'Candi Sewu',
        'history':
            'Candi Sewu adalah kompleks candi Buddha yang terletak di Jawa Tengah, Indonesia, tidak jauh dari candi terkenal Borobudur. Berikut adalah sejarah singkatnya:Candi Sewu, yang artinya "seribu candi" dalam bahasa Jawa, sebenarnya terdiri dari banyak candi kecil. Candi ini dibangun pada abad ke-8 pada masa pemerintahan dinasti Sailendra, yang juga membangun Borobudur...',
        'image':
            'candi sewu.jpg', // Ubah path sesuai dengan struktur folder assets
      },
      {
        'name': 'Candi Kalasan',
        'history':
            'Candi Kalasan adalah sebuah candi Hindu yang terletak di daerah Prambanan, Yogyakarta, Indonesia. Berikut adalah ringkasan sejarahnya:Candi Kalasan dibangun pada abad ke-8 Masehi oleh Wangsa Syailendra, yang sama-sama membangun Candi Sewu dan Candi Borobudur. Candi ini awalnya didedikasikan untuk Dewi Tara, salah satu dewi penting dalam agama Hindu-Buddha. Candi Kalasan dikenal karena relief-reliefnya yang indah dan beberapa inskripsi yang memberikan informasi tentang pemberian dan renovasi candi ini.Seiring dengan Candi Sewu, Candi Kalasan juga mengalami masa-masa perawatan dan restorasi. Pada zaman Hindia Belanda, candi ini direstorasi kembali pada tahun 1918. Pada tahun 1929, Kepala Purbakala Hindia Belanda, R.A. Kern, menemukan pahatan baru di Candi Kalasan, termasuk relief yang menggambarkan Dewi Tara.Candi Kalasan juga menjadi salah satu contoh awal arsitektur candi Hindu di Jawa, menunjukkan pengaruh dari gaya arsitektur India Selatan. Saat ini, Candi Kalasan menjadi salah satu situs bersejarah dan objek wisata penting di Yogyakarta, sering dikunjungi oleh wisatawan dan peneliti sejarah.Jika ada hal lain yang ingin Anda ketahui tentang Candi Kalasan atau jika ada pertanyaan lain seputar sejarah candi di Indonesia, silakan beri tahu saya!...',
        'image':
            'candi kalasan.jpg', // Ubah path sesuai dengan struktur folder assets
      },
    ],
    'Islam': [
      {
        'name': 'masjid agung banten',
        'history':
            'Masjid Agung Banten, juga dikenal sebagai Masjid Agung Sultan Maulana Hasanuddin, adalah sebuah masjid yang terletak di Kota Serang, Banten, Indonesia. Berikut adalah sejarah singkatnya:Masjid Agung Banten dibangun pada awal abad ke-16 oleh Sultan Maulana Hasanuddin, yang merupakan Sultan Banten pertama. Masjid ini merupakan salah satu contoh penting arsitektur Islam tradisional di Indonesia, dengan gaya arsitektur yang mencerminkan pengaruh dari India, Arab, dan Asia Tenggara.Masjid Agung Banten memiliki makam Sultan Hasanuddin di dalam kompleksnya, yang menjadi salah satu tempat ziarah dan doa bagi umat Islam di Banten dan sekitarnya. Selain sebagai tempat ibadah, masjid ini juga menjadi pusat kegiatan keagamaan, sosial, dan budaya bagi masyarakat setempat.Selama berabad-abad, Masjid Agung Banten mengalami berbagai renovasi dan perawatan untuk mempertahankan keaslian dan kekuatan strukturnya. Masjid ini memiliki nilai sejarah yang sangat penting bagi sejarah Islam di Indonesia, terutama dalam konteks penyebaran agama Islam di wilayah Banten.Masjid Agung Banten juga menjadi salah satu objek wisata sejarah yang menarik di Banten, sering dikunjungi oleh wisatawan dan para sejarawan yang tertarik pada sejarah keislaman di Indonesia.',
        'image':
            'masjid agung banten.jpg', // Ubah path sesuai dengan struktur folder assets
      },
      {
        'name': 'masjid agung demak',
        'history':
            'Masjid Agung Demak adalah sebuah masjid bersejarah yang terletak di Kota Demak, Jawa Tengah, Indonesia. Berikut adalah ringkasan sejarahnya:Masjid Agung Demak dibangun pada pertengahan abad ke-15 Masehi, sekitar tahun 1478, oleh Raden Patah, yang merupakan Sultan Demak pertama. Masjid ini menjadi salah satu masjid penting dalam sejarah Islam di Indonesia karena menjadi pusat penyebaran agama Islam di Jawa pada masa itu.Masjid Agung Demak dikenal dengan arsitektur dan desainnya yang sederhana namun bersejarah. Bangunannya menggunakan material utama dari batu bata merah dan memiliki atap yang berbentuk limas atau tumpang sari, ciri khas arsitektur Jawa pada masa itSelain sebagai tempat ibadah, Masjid Agung Demak juga menjadi pusat kegiatan keagamaan, pendidikan, dan sosial masyarakat Demak pada masa lampau. Masjid ini juga menjadi tempat penting dalam sejarah politik dan kebudayaan Jawa pada masa Hindu-Buddha beralih ke Islam.Selama berabad-abad, Masjid Agung Demak telah mengalami beberapa kali renovasi dan perbaikan untuk menjaga keaslian serta keberlanjutan fungsinya sebagai tempat ibadah dan pusat kegiatan keagamaan. Saat ini, masjid ini tetap menjadi salah satu situs bersejarah yang penting di Jawa Tengah, sering dikunjungi oleh wisatawan dan umat Islam dari berbagai penjuru.',
        'image':
            'masjid agung demak.jpg', // Ubah path sesuai dengan struktur folder assets
      },
      {
        'name': 'masjid menara kudus',
        'history':
            'Masjid Menara Kudus adalah sebuah masjid bersejarah yang terletak di Kota Kudus, Jawa Tengah, Indonesia. Berikut adalah ringkasan sejarahnya:Masjid Menara Kudus dibangun pada abad ke-16 Masehi, sekitar tahun 1549 M, oleh Sunan Kudus atau Sunan Muria, salah satu dari sembilan wali (saint) penyebar Islam di Jawa. Sunan Kudus adalah salah satu tokoh penting dalam penyebaran Islam di wilayah Kudus dan sekitarnya.Nama "Menara" dalam Masjid Menara Kudus merujuk pada menara atau bangunan kecil yang ada di samping masjid utama, yang digunakan sebagai tempat azan dan juga sebagai tempat perlindungan bagi penghafal Al-Quran. Menara ini memiliki gaya arsitektur yang khas, dengan atap berbentuk limas atau tumpang sari, yang sering kali menjadi ciri khas masjid-masjid Jawa pada masa itu.Masjid Menara Kudus juga dikenal dengan interior yang indah dan dipenuhi dengan berbagai ukiran kayu dan kaligrafi Islam yang menghiasi dinding-dindingnya. Bangunan masjid ini telah mengalami beberapa kali renovasi untuk menjaga keasliannya, tetapi tetap mempertahankan karakteristik arsitektur dan budayanya yang khas.Selain sebagai tempat ibadah, Masjid Menara Kudus juga menjadi pusat kegiatan keagamaan, sosial, dan budaya bagi masyarakat Kudus dan sekitarnya. Masjid ini merupakan salah satu situs bersejarah yang penting di Jawa Tengah dan sering dikunjungi oleh wisatawan dan umat Islam dari berbagai daerah.',
        'image':
            'masjid menara kudus.jpg', // Ubah path sesuai dengan struktur folder assets
      },
      {
        'name': 'masjid ternate',
        'history':
            'Masjid Ternate adalah sebuah masjid bersejarah yang terletak di Pulau Ternate, Maluku Utara, Indonesia. Berikut adalah ringkasan sejarahnya:Masjid Ternate dibangun pada abad ke-15 Masehi oleh Sultan Khairun, yang merupakan Sultan Ternate pada masa itu. Masjid ini merupakan salah satu dari beberapa masjid tertua di Indonesia dan merupakan simbol penting dari penyebaran agama Islam di Maluku.Arsitektur Masjid Ternate menggabungkan gaya arsitektur Timur Tengah dengan gaya lokal Maluku. Bangunan utama masjid ini memiliki atap limas tinggi dan dinding-dinding yang dibuat dari batu bata merah. Masjid ini juga memiliki menara yang digunakan untuk azan dan sebagai penanda keberadaan masjid.Selama berabad-abad, Masjid Ternate mengalami berbagai renovasi dan perbaikan untuk menjaga keaslian serta fungsinya sebagai tempat ibadah dan pusat kegiatan keagamaan. Masjid ini juga menjadi pusat kegiatan keagamaan dan budaya bagi masyarakat Ternate dan sekitarnya.Sebagai salah satu situs bersejarah di Ternate, Masjid Ternate sering dikunjungi oleh wisatawan dan umat Islam dari berbagai penjuru. Masjid ini juga menjadi bagian penting dari warisan budaya dan sejarah Islam di Indonesia Timur.',
        'image':
            'masjid ternate.jpg', // Ubah path sesuai dengan struktur folder assets
      },
    ],
    'Hindu': [
      {
        'name': 'Candi Badut',
        'history':
            'candi Badut adalah sebuah candi Hindu yang terletak di Malang, Jawa Timur, Indonesia. Berikut adalah ringkasan sejarahnya:Candi Badut diperkirakan dibangun pada abad ke-8 Masehi, pada masa pemerintahan Wangsa Sanjaya di Kerajaan Mataram Kuno. Candi ini merupakan salah satu contoh awal arsitektur candi Hindu di Jawa Timur. Meskipun tidak sebesar candi-candi terkenal seperti Candi Borobudur atau Candi Prambanan, Candi Badut memiliki nilai sejarah dan arkeologi yang penting.Arsitektur Candi Badut menampilkan ciri khas candi Hindu, dengan bentuk bangunan utama yang menara dan hiasan-hiasan relief yang menggambarkan cerita-cerita dari mitologi Hindu, seperti cerita Ramayana dan Mahabharata. Candi ini juga memiliki stupa yang digunakan untuk tempat penyimpanan relik Buddha atau tokoh suci.Selama berabad-abad, Candi Badut mengalami beberapa kali perawatan dan restorasi. Pada tahun 1879, candi ini ditemukan kembali dan kemudian mengalami renovasi pada tahun 1915. Saat ini, Candi Badut menjadi salah satu objek wisata sejarah dan arkeologi yang menarik di Malang, sering dikunjungi oleh wisatawan dan peneliti yang tertarik pada sejarah kebudayaan Hindu di Indonesia.',
        'image':
            'candi badut.jpg', // Ubah path sesuai dengan struktur folder assets
      },
      {
        'name': 'Candi arjuna',
        'history':
            'Candi Arjuna, atau juga dikenal sebagai Candi Loro Jonggrang, adalah sebuah candi Hindu yang terletak di kompleks Candi Prambanan, Yogyakarta, Indonesia. Berikut adalah ringkasan sejarahnya:Candi Arjuna dibangun pada abad ke-8 Masehi oleh Wangsa Sanjaya, yang juga membangun kompleks Candi Prambanan. Candi ini merupakan salah satu candi tertua dan paling awal dari kompleks Prambanan yang terkenal, dan menjadi salah satu contoh penting arsitektur Hindu klasik di Indonesia.Candi Arjuna didedikasikan untuk dewa Wisnu, dan dikenal karena memiliki arsitektur yang elegan dan hiasan-hiasan relief yang menggambarkan berbagai cerita dan adegan mitologi Hindu, seperti Ramayana dan Mahabharata. Bangunan utama candi ini berbentuk seperti menara, dengan atap yang melengkung khas arsitektur candi Hindu.Selama berabad-abad, Candi Arjuna mengalami berbagai perbaikan dan restorasi. Pada tahun 1885, sebuah proyek restorasi besar dilakukan untuk menjaga keaslian dan keindahan candi ini. Saat ini, Candi Arjuna menjadi salah satu destinasi wisata budaya dan sejarah yang populer di Yogyakarta, sering dikunjungi oleh wisatawan dan para peneliti arsitektur dan sejarah.Candi Arjuna bersama dengan kompleks Candi Prambanan secara keseluruhan telah diakui sebagai Situs Warisan Dunia UNESCO, menjadi bukti penting dari peradaban Hindu di Indonesia dan menjadi pusat kegiatan keagamaan dan budaya di masa lalu.',
        'image':
            'candi arjuna.jpg', // Ubah path sesuai dengan struktur folder assets
      },
      {
        'name': 'Candi cetho',
        'history':
            'Candi Cetho adalah sebuah candi Hindu yang terletak di lereng Gunung Lawu, Jawa Tengah, Indonesia. Berikut adalah ringkasan sejarahnya:Candi Cetho diperkirakan dibangun pada abad ke-15 Masehi, pada masa pemerintahan Wangsa Majapahit di Jawa. Candi ini merupakan salah satu dari sedikit candi Hindu yang terletak di pegunungan dan memiliki keindahan alam yang spektakuler di sekitarnya.Arsitektur Candi Cetho menampilkan ciri khas candi Hindu dengan struktur bangunan utama yang terdiri dari beberapa teras bertingkat, menghadap ke arah barat. Pada setiap terasnya terdapat pelataran dan candi-candi kecil yang dipergunakan untuk berbagai kegiatan keagamaan dan ritual.Candi Cetho juga dikenal karena hiasan-hiasan relief yang menghiasi dinding-dindingnya, yang menggambarkan berbagai adegan dari mitologi Hindu seperti Ramayana dan Mahabharata. Struktur arsitekturnya yang unik dan lokasinya yang berada di ketinggian membuat Candi Cetho menjadi salah satu destinasi wisata budaya dan spiritual yang populer di Jawa Tengah.Selama berabad-abad, Candi Cetho telah mengalami beberapa kali restorasi untuk menjaga keaslian dan keberlanjutannya sebagai situs bersejarah. Saat ini, candi ini menjadi tempat ziarah dan meditasi bagi umat Hindu serta menjadi objek penelitian bagi para arkeolog dan sejarawan.',
        'image':
            'candi cetho.jpg', // Ubah path sesuai dengan struktur folder assets
      },
      {
        'name': 'Candi sewu',
        'history':
            'Candi Sewu adalah kompleks candi Buddha yang menakjubkan, terletak dekat Candi Borobudur di Magelang, Jawa Tengah, Indonesia. Dibangun pada abad ke-8 Masehi oleh dinasti Sailendra, kompleks ini merupakan salah satu contoh paling awal dan paling penting dari arsitektur Buddha Mahayana di Indonesia.Kompleks Candi Sewu terdiri dari sekitar 249 candi kecil yang tersebar dalam dua kompleks utama, yaitu kompleks utara dan selatan. Candi utama kompleks utara memiliki bangunan utama berbentuk paduraksa yang indah, dengan stupa besar di tengahnya yang menjadi pusat perhatian. Arsitektur candi ini menunjukkan pengaruh kuat dari arsitektur India Selatan, dengan tatanan bangunan yang simetris dan hiasan-hiasan relief yang menggambarkan adegan-kegiatan kehidupan sehari-hari serta cerita-cerita dari kehidupan Buddha.Selama berabad-abad, Candi Sewu telah mengalami beberapa kali restorasi dan pemeliharaan untuk menjaga keaslian dan kekuatan struktur arsitekturnya. Pada abad ke-19 dan awal abad ke-20, pemerintah Hindia Belanda melakukan upaya restorasi besar-besaran untuk mempertahankan keindahan dan nilai sejarah candi ini.Candi Sewu tidak hanya memiliki nilai sejarah yang tinggi, tetapi juga merupakan tempat penting dalam sejarah penyebaran agama Buddha di Jawa pada masa lampau. Bersama dengan Candi Borobudur dan Candi Prambanan, Candi Sewu diakui sebagai Situs Warisan Dunia UNESCO sejak tahun 1991, menjadi bukti penting dari kekayaan budaya dan warisan sejarah Indonesia yang patut dilestarikan dan dijaga untuk generasi mendatang.Candi Sewu tidak hanya menjadi tujuan wisata yang populer bagi wisatawan domestik dan internasional, tetapi juga terus menjadi pusat kegiatan keagamaan dan budaya yang penting bagi masyarakat lokal. Dengan latar belakang alam yang menawan di sekitarnya, kunjungan ke Candi Sewu tidak hanya menawarkan pengalaman spiritual dan sejarah, tetapi juga keindahan alam yang mengesankan dari wilayah Magelang, Jawa Tengah.',
        'image':
            'candi sewu.jpg', // Ubah path sesuai dengan struktur folder assets
      },
    ],
  };

  void _navigateToBiography(String name, String history, String image) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BiographyPage(
          name: name,
          biography: history,
          imageName: image,
        ),
      ),
    );
  }

  void _editTemple(String category, int index) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditTemplePage(
          temple: templeCategories[category]![index],
        ),
      ),
    );
    if (result != null) {
      setState(() {
        templeCategories[category]![index] = result;
      });
    }
  }

  void _deleteTemple(String category, int index) {
    setState(() {
      templeCategories[category]!.removeAt(index);
    });
  }

  void _addTemple(String category) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditTemplePage(),
      ),
    );
    if (result != null) {
      setState(() {
        templeCategories[category]!.add(result);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kelola Candi"),
        backgroundColor: const Color.fromARGB(255, 133, 206, 210),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: List.generate(
                  templeCategories.length,
                  (categoryIndex) {
                    String category =
                        templeCategories.keys.elementAt(categoryIndex);
                    return ExpansionTile(
                      title: Text(category),
                      children: List.generate(
                        templeCategories[category]!.length,
                        (index) {
                          var temple = templeCategories[category]![index];
                          return InkWell(
                            onTap: () {
                              _navigateToBiography(
                                temple['name']!,
                                temple['history']!,
                                temple['image']!,
                              );
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              margin: EdgeInsets.all(10),
                              color: Color.fromARGB(255, 156, 201, 205),
                              elevation: 20,
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        temple['name']!,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        IconButton(
                                          icon: Icon(Icons.edit,
                                              color: Colors.white),
                                          onPressed: () {
                                            _editTemple(category, index);
                                          },
                                        ),
                                        IconButton(
                                          icon: Icon(Icons.delete,
                                              color: Colors.white),
                                          onPressed: () {
                                            _deleteTemple(category, index);
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          _addTemple(category);
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BiographyPage extends StatelessWidget {
  final String name;
  final String biography;
  final String imageName;

  const BiographyPage({
    Key? key,
    required this.name,
    required this.biography,
    required this.imageName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        backgroundColor: Color.fromARGB(255, 129, 194, 199),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              'assets/$imageName',
              width: 200,
              height: 200,
              fit: BoxFit.cover, // Sesuaikan dengan kebutuhan tata letak
              errorBuilder: (context, error, stackTrace) {
                return Text('Gambar tidak ditemukan');
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              biography,
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}

class EditTemplePage extends StatefulWidget {
  final Map<String, String>? temple;

  const EditTemplePage({Key? key, this.temple}) : super(key: key);

  @override
  _EditTemplePageState createState() => _EditTemplePageState();
}

class _EditTemplePageState extends State<EditTemplePage> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _historyController;
  late TextEditingController _imageController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(
      text: widget.temple?['name'] ?? '',
    );
    _historyController = TextEditingController(
      text: widget.temple?['history'] ?? '',
    );
    _imageController = TextEditingController(
      text: widget.temple?['image'] ?? '',
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _historyController.dispose();
    _imageController.dispose();
    super.dispose();
  }

  void _saveTemple() {
    if (_formKey.currentState!.validate()) {
      Navigator.pop(context, {
        'name': _nameController.text,
        'history': _historyController.text,
        'image': _imageController.text,
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.temple == null ? 'Tambah Candi' : 'Edit Candi'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Nama Candi'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama candi tidak boleh kosong';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _historyController,
                decoration: InputDecoration(labelText: 'Sejarah Candi'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Sejarah candi tidak boleh kosong';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _imageController,
                decoration: InputDecoration(labelText: 'Nama Gambar'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama gambar tidak boleh kosong';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _saveTemple,
                child: Text('Simpan'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

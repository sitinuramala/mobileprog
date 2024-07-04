import 'package:flutter/material.dart';

class CandiIslamPage extends StatefulWidget {
  const CandiIslamPage({Key? key}) : super(key: key);

  @override
  _CandiIslamPageState createState() => _CandiIslamPageState();
}

class _CandiIslamPageState extends State<CandiIslamPage> {
  List<Map<String, String>> candiIslam = [
    {
      'name': 'Masjid Agung Demak',
      'biography': 'Masjid Agung Demak adalah masjid tertua di Indonesia...',
      'imageName': 'masjid_agung.jpg',
    },
    {
      'name': 'Masjid Istiqlal',
      'biography': 'Masjid Istiqlal adalah masjid terbesar di Asia Tenggara...',
      'imageName': 'masjid_istiqlal.jpg',
    },
    {
      'name': 'Masjid Raya Baiturrahman',
      'biography':
          'Masjid Raya Baiturrahman adalah sebuah masjid bersejarah...',
      'imageName': 'masjid_raya_baiturrahman.jpg',
    },
    {
      'name': 'Masjid Menara Kudus',
      'biography':
          'Masjid Menara Kudus adalah masjid yang unik dengan menara...',
      'imageName': 'menara_kudus.jpg',
    },
  ];

  void _navigateToBiography(
      BuildContext context, String name, String biography, String imageName) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BiographyPage(
            name: name, biography: biography, imageName: imageName),
      ),
    );
  }

  void _editCandiIslam(int index) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditCandiIslamPage(candi: candiIslam[index]),
      ),
    );
    if (result != null) {
      setState(() {
        candiIslam[index] = result;
      });
    }
  }

  void _deleteCandiIslam(int index) {
    setState(() {
      candiIslam.removeAt(index);
    });
  }

  void _addCandiIslam() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditCandiIslamPage(),
      ),
    );
    if (result != null) {
      setState(() {
        candiIslam.add(result);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Candi Islam',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 144, 228, 230),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: candiIslam.asMap().entries.map((entry) {
              int index = entry.key;
              Map<String, String> candiData = entry.value;

              return InkWell(
                onTap: () {
                  _navigateToBiography(
                    context,
                    candiData['name']!,
                    candiData['biography']!,
                    candiData['imageName']!,
                  );
                },
                child: Container(
                  width: double.infinity,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin: EdgeInsets.all(10),
                    color: Color.fromARGB(255, 142, 220, 215),
                    elevation: 20,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Text(
                              candiData['name']!,
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
                                icon: Icon(Icons.edit, color: Colors.white),
                                onPressed: () {
                                  _editCandiIslam(index);
                                },
                              ),
                              IconButton(
                                icon: Icon(Icons.delete, color: Colors.white),
                                onPressed: () {
                                  _deleteCandiIslam(index);
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addCandiIslam,
        child: Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 135, 210, 200),
      ),
    );
  }
}

class BiographyPage extends StatelessWidget {
  final String name;
  final String biography;
  final String imageName;

  const BiographyPage(
      {Key? key,
      required this.name,
      required this.biography,
      required this.imageName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        backgroundColor: Color.fromARGB(255, 157, 224, 221),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              'gambar/$imageName',
              width: 200,
              height: 200,
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

class EditCandiIslamPage extends StatefulWidget {
  final Map<String, String>? candi;

  const EditCandiIslamPage({Key? key, this.candi}) : super(key: key);

  @override
  _EditCandiIslamPageState createState() => _EditCandiIslamPageState();
}

class _EditCandiIslamPageState extends State<EditCandiIslamPage> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _biographyController;
  late TextEditingController _imageNameController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(
      text: widget.candi?['name'] ?? '',
    );
    _biographyController = TextEditingController(
      text: widget.candi?['biography'] ?? '',
    );
    _imageNameController = TextEditingController(
      text: widget.candi?['imageName'] ?? '',
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _biographyController.dispose();
    _imageNameController.dispose();
    super.dispose();
  }

  void _saveCandiIslam() {
    if (_formKey.currentState!.validate()) {
      Navigator.pop(context, {
        'name': _nameController.text,
        'biography': _biographyController.text,
        'imageName': _imageNameController.text,
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            widget.candi == null ? 'Tambah Candi Islam' : 'Edit Candi Islam'),
        backgroundColor: Color.fromARGB(255, 135, 205, 210),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Nama'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama tidak boleh kosong';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _biographyController,
                decoration: InputDecoration(labelText: 'Biografi'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Biografi tidak boleh kosong';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _imageNameController,
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
                onPressed: _saveCandiIslam,
                child: Text('Simpan'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

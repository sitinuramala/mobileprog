import 'package:flutter/material.dart';

class CandiHinduPage extends StatefulWidget {
  const CandiHinduPage({Key? key}) : super(key: key);

  @override
  _CandiHinduPageState createState() => _CandiHinduPageState();
}

class _CandiHinduPageState extends State<CandiHinduPage> {
  List<Map<String, String>> candiHindu = [
    {
      'name': 'Candi Prambanan',
      'biography':
          'Candi Prambanan adalah kompleks candi Hindu terbesar di Indonesia, dibangun pada abad ke-9.',
      'imageName': 'prambanan.jpg',
    },
    {
      'name': 'Candi Penataran',
      'biography':
          'Candi Penataran adalah candi Hindu terbesar di Jawa Timur, berasal dari Kerajaan Kediri.',
      'imageName': 'penataran.jpg',
    },
    {
      'name': 'Candi Jawi',
      'biography':
          'Candi Jawi adalah candi Hindu-Buddha yang terletak di Pasuruan, Jawa Timur.',
      'imageName': 'jawi.jpg',
    },
    {
      'name': 'Candi Sambisari',
      'biography':
          'Candi Sambisari adalah candi Hindu yang terletak di Yogyakarta, diperkirakan dibangun pada abad ke-9.',
      'imageName': 'sambisari.jpg',
    },
    {
      'name': 'Candi Badut',
      'biography':
          'Candi Badut adalah candi Hindu yang terletak di Malang, Jawa Timur, dibangun pada masa Kerajaan Kanjuruhan.',
      'imageName': 'badut.jpg',
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

  void _editCandi(int index) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditCandiPage(
          candi: candiHindu[index],
        ),
      ),
    );
    if (result != null) {
      setState(() {
        candiHindu[index] = result;
      });
    }
  }

  void _deleteCandi(int index) {
    setState(() {
      candiHindu.removeAt(index);
    });
  }

  void _addCandi() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditCandiPage(),
      ),
    );
    if (result != null) {
      setState(() {
        candiHindu.add(result);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Candi Hindu',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 135, 206, 211),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: candiHindu.asMap().entries.map((entry) {
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
                    color: Color.fromARGB(255, 140, 203, 207),
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
                                  _editCandi(index);
                                },
                              ),
                              IconButton(
                                icon: Icon(Icons.delete, color: Colors.white),
                                onPressed: () {
                                  _deleteCandi(index);
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
        onPressed: _addCandi,
        child: Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 141, 215, 216),
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
        backgroundColor: Color.fromARGB(255, 145, 221, 229),
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

class EditCandiPage extends StatefulWidget {
  final Map<String, String>? candi;

  const EditCandiPage({Key? key, this.candi}) : super(key: key);

  @override
  _EditCandiPageState createState() => _EditCandiPageState();
}

class _EditCandiPageState extends State<EditCandiPage> {
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

  void _saveCandi() {
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
        title: Text(widget.candi == null ? 'Tambah Candi' : 'Edit Candi'),
        backgroundColor: Color.fromARGB(255, 134, 210, 208),
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
                controller: _biographyController,
                decoration: InputDecoration(labelText: 'Deskripsi Candi'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Deskripsi candi tidak boleh kosong';
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
                onPressed: _saveCandi,
                child: Text('Simpan'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

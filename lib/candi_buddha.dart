import 'package:flutter/material.dart';

class CandiBuddhaPage extends StatefulWidget {
  const CandiBuddhaPage({Key? key}) : super(key: key);

  @override
  _CandiBuddhaPageState createState() => _CandiBuddhaPageState();
}

class _CandiBuddhaPageState extends State<CandiBuddhaPage> {
  List<Map<String, String>> candiBuddhas = [
    {
      'name': 'Candi Borobudur',
      'biography': 'Candi Borobudur adalah candi Buddha terbesar di dunia...',
      'imageName': 'borobudur.jpg',
    },
    {
      'name': 'Candi Mendut',
      'biography': 'Candi Mendut terletak di dekat Candi Borobudur...',
      'imageName': 'mendut.jpg',
    },
    {
      'name': 'Candi Sewu',
      'biography':
          'Candi Sewu adalah kompleks candi Buddha terbesar kedua di Jawa...',
      'imageName': 'sewu.jpg',
    },
    {
      'name': 'Candi Plaosan',
      'biography':
          'Candi Plaosan merupakan kompleks candi yang dibangun pada masa kerajaan Mataram Kuno...',
      'imageName': 'plaosan.jpg',
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

  void _editCandiBuddha(int index) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditCandiBuddhaPage(
          candiBuddha: candiBuddhas[index],
        ),
      ),
    );
    if (result != null) {
      setState(() {
        candiBuddhas[index] = result;
      });
    }
  }

  void _deleteCandiBuddha(int index) {
    setState(() {
      candiBuddhas.removeAt(index);
    });
  }

  void _addCandiBuddha() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditCandiBuddhaPage(),
      ),
    );
    if (result != null) {
      setState(() {
        candiBuddhas.add(result);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Candi Buddha',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 153, 205, 208),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: candiBuddhas.asMap().entries.map((entry) {
              int index = entry.key;
              Map<String, String> candiBuddha = entry.value;

              return InkWell(
                onTap: () {
                  _navigateToBiography(
                    context,
                    candiBuddha['name']!,
                    candiBuddha['biography']!,
                    candiBuddha['imageName']!,
                  );
                },
                child: Container(
                  width: double.infinity,
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Text(
                              candiBuddha['name']!,
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
                                  _editCandiBuddha(index);
                                },
                              ),
                              IconButton(
                                icon: Icon(Icons.delete, color: Colors.white),
                                onPressed: () {
                                  _deleteCandiBuddha(index);
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
          onPressed: _addCandiBuddha,
          child: Icon(Icons.add),
          backgroundColor: Color.fromARGB(255, 129, 180, 184)),
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
        backgroundColor: Color.fromARGB(255, 129, 194, 199),
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

class EditCandiBuddhaPage extends StatefulWidget {
  final Map<String, String>? candiBuddha;

  const EditCandiBuddhaPage({Key? key, this.candiBuddha}) : super(key: key);

  @override
  _EditCandiBuddhaPageState createState() => _EditCandiBuddhaPageState();
}

class _EditCandiBuddhaPageState extends State<EditCandiBuddhaPage> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _biographyController;
  late TextEditingController _imageNameController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(
      text: widget.candiBuddha?['name'] ?? '',
    );
    _biographyController = TextEditingController(
      text: widget.candiBuddha?['biography'] ?? '',
    );
    _imageNameController = TextEditingController(
      text: widget.candiBuddha?['imageName'] ?? '',
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _biographyController.dispose();
    _imageNameController.dispose();
    super.dispose();
  }

  void _saveCandiBuddha() {
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
        title: Text(widget.candiBuddha == null ? 'Tambah Candi' : 'Edit Candi'),
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
                onPressed: _saveCandiBuddha,
                child: Text('Simpan'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

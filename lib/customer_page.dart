import 'package:flutter/material.dart';

class CustomerPage extends StatelessWidget {
  const CustomerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customer Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TestimonialPage()),
            );
          },
          child: const Text('Add Testimonial'),
        ),
      ),
    );
  }
}

class TestimonialPage extends StatefulWidget {
  const TestimonialPage({Key? key}) : super(key: key);

  @override
  _TestimonialPageState createState() => _TestimonialPageState();
}

class _TestimonialPageState extends State<TestimonialPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _testimonialController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Testimonial'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Your Name'),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _testimonialController,
              decoration: const InputDecoration(labelText: 'Your Testimonial'),
              maxLines: 5,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String name = _nameController.text;
                String testimonial = _testimonialController.text;

                if (name.isNotEmpty && testimonial.isNotEmpty) {
                  // Simpan testimoni atau kirim ke backend
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Testimonial submitted')),
                  );

                  // Kosongkan form setelah submit
                  _nameController.clear();
                  _testimonialController.clear();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Please fill all fields')),
                  );
                }
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'contact_page.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.info, size: 48, color: Colors.indigo),
              const SizedBox(height: 12),
              const Text(
                'About Page',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const ContactPage()),
                  );
                },
                icon: const Icon(Icons.arrow_forward),
                label: const Text('Go to Contact'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

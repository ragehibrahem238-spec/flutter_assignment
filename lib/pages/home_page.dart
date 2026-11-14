import 'package:flutter/material.dart';
import 'about_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.home, size: 48, color: Colors.indigo),
              const SizedBox(height: 12),
              const Text(
                'Home Page',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  'https://picsum.photos/400/250',
                  height: 200,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stack) =>
                      const Icon(Icons.image_not_supported, size: 100),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const AboutPage()),
                  );
                },
                icon: const Icon(Icons.arrow_forward),
                label: const Text('Go to About'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

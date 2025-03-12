import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profil',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50], // Latar belakang biru muda
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text('Profil', style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          // Bagian Profil dengan gambar dari assets
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/img1.jpg'), // Tambahkan gambar
          ),
          const SizedBox(height: 10),
          const Text(
            'I Gusti Ayu Isyana Ariprabha',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          const Text(
            'http://www.isyana.com',
            style: TextStyle(fontSize: 16, color: Colors.blue),
          ),
          const SizedBox(height: 20),

          // Grid Menu
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                children: [
                  buildCustomCard(Icons.gps_fixed, "Karangasem", Colors.green),
                  buildCustomCard(Icons.store, "Selat", Colors.yellow),
                  buildCustomCard(Icons.music_note, "All Genre", Colors.purple),
                  buildCustomCard(Icons.apartment, "Undiksha", Colors.blue),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCustomCard(IconData icon, String text, Color iconColor) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.blue, width: 2),
      ),
      child: Column(
        children: [
          Expanded(
            child: Center(child: Icon(icon, size: 50, color: iconColor)),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 8),
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.yellow,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

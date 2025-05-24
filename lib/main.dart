//Tugas 1 Praktikum Teknologi Pemrograman Mobile IF-C
// Jeslyn vicky Hanjaya - 123220150

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
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dashboard",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Foto Profil
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/pfp.jpg'), 
            ),
            const SizedBox(height: 10),

            // Nama dan NIM
            const Text(
              "Jeslyn Vicky Hanjaya",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text(
              "123220150",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 20),

            // Tombol Horizontal
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Tombol 1",
                  style: TextStyle(color: Colors.pink),),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
                  child: const Text("Tombol 2",
                  style: TextStyle(color: Colors.white),),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.pink[300]),
                  child: const Text("Tombol 3", style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // GridView Card
            Expanded(
              child: GridView.count(
                crossAxisCount: 2, // Dua kolom
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  buildCard(Color(0xFFf78fc5)),
                  buildCard(Color(0xFFf7609f)),
                  buildCard(Color(0xFFb32761)),
                  buildCard(Color(0xFFc2536f)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk membuat kartu
  Widget buildCard(Color color) {
    return Card(
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: const Center(
        child: FlutterLogo(size: 50),
      ),
    );
  }
}

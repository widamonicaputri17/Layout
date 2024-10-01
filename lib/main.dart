import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Membuat titleSection
    Widget titleSection = Container(
      padding: const EdgeInsets.all(
          32.0), // Padding di sepanjang setiap tepinya sebesar 32 piksel
      child: Row(
        children: [
          Expanded(
            /* soal 1 */
            // Letakkan widget Column di dalam widget Expanded
            // Tambahkan crossAxisAlignment agar kolom berada di awal baris
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* soal 2 */
                // Teks pertama di dalam Container dengan padding 8 di bawahnya
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Teks kedua dengan warna abu-abu
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey[500], // Warna abu-abu
                  ),
                ),
              ],
            ),
          ),
          /* soal 3 */
          // Ikon bintang dengan warna merah dan teks "41"
          Icon(
            Icons.star,
            color: Colors.red[500], // Warna merah untuk ikon bintang
          ),
          const Text('41'),
        ],
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Nama dan NIM Anda',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Column(
          children: [
            titleSection, // Ganti body dengan titleSection
            const Center(
              child: Text('Hello World'),
            ),
          ],
        ),
      ),
    );
  }
}

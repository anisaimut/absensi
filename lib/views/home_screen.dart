import 'package:flutter/material.dart';
import 'package:monitoring_kehadiran_siswa/views/riwayat_screen.dart';
import 'absensi_screen.dart'; // Path relatif, pastikan file ini ada


class HalamanUtama extends StatefulWidget {
  @override
  _HalamanUtamaState createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  int _currentIndex = 0; // Untuk navigasi antar halaman

  // Daftar halaman yang tersedia
  final List<Widget> _pages = [
  
    AbsensiScreen(), RiwayatScreen() // Halaman absensi
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Monitoring Kehadiran Siswa'),
      ),
      body: _pages[_currentIndex], // Menampilkan halaman berdasarkan indeks
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // Indeks saat ini
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Ubah halaman saat dipilih
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), // Ikon untuk halaman Home
            label: 'Beranda', // Label untuk halaman Home
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt), // Ikon untuk halaman Absensi
            label: 'Absensi', // Label untuk halaman Absensi
          ),
        ],
      ),
    );
  }
}

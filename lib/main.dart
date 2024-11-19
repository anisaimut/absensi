import 'package:flutter/material.dart';
import './providers/absensi_provider.dart';
import './views/home_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(const AplikasiAbsensi());

class AplikasiAbsensi extends StatelessWidget {
  const AplikasiAbsensi({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AbsensiProvider(),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HalamanUtama(),
      ),
    );
  }
}
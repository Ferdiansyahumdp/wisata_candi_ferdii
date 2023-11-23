import 'package:flutter/material.dart';
import 'package:wisata_candi_ferdi_final/data/candi_data.dart';
import '../model/candi.dart'; // Sesuaikan dengan struktur folder Anda
import '../widget/item_card.dart'; // Sesuaikan dengan struktur folder Anda

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wisata Candi'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        padding: EdgeInsets.all(8.0),
        itemCount: candiList.length,
        itemBuilder: (context, index) {
          // Deklarasikan variabel candi di dalam builder
          final Candi candi = candiList[index];
          return ItemCard(candi: candi);
        },
      ),
    );
  }
}

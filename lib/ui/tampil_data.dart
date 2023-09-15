import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final String nama;
  final String nim;
  final int tahun;
  const TampilData(
      {Key? key, required this.nama, required this.nim, required this.tahun})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
     DateTime tanggalSekarang = DateTime.now();
    int tahunSekarang = tanggalSekarang.year;
    int umurSaya = tahunSekarang - tahun;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Perkenalan"),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                  "Nama Saya $nama, NIM $nim , dan umur saya adalah $umurSaya"),
              //Text("Nama Produk : $namaProduk"),
              //Text("Harga Produk : $hargaProduk"),
            ],
          ),
        ));
  }
}

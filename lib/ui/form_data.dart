import 'package:belajar_flutter/ui/tampil_data.dart';
import 'package:flutter/material.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);
  @override
  _FormDataState createState() => _FormDataState();
}

class _FormDataState extends State<FormData> {
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _tahunLahirController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Data'),
      ),
      body: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              _textboxNama(),
              _textboxNim(),
              _textboxTahun(),
              SizedBox(
                height: 10,
              ),
              _tombolSimpan()
            ],
          )),
    );
  }

  _textboxNama() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama"),
      controller: _namaController,
    );
  }

  _textboxNim() {
    return TextField(
      decoration: const InputDecoration(labelText: "NIM"),
      controller: _nimController,
    );
  }

  _textboxTahun() {
    return TextField(
      decoration: const InputDecoration(labelText: "Tahun Lahir"),
      controller: _tahunLahirController,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          String nama = _namaController.text;
          String nim = _nimController.text;
          int tahun = int.parse(_tahunLahirController.text);
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => TampilData(
                    nama: nama,
                    nim: nim,
                    tahun: tahun,
                  )));
        },
        child: const Text('Simpan'));
  }
}

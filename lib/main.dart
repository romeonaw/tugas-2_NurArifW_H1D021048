import 'package:flutter/material.dart';
import 'package:belajar_flutter/ui/form_data.dart';
import 'package:belajar_flutter/ui/tampil_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        title: "Aplikasi Flutter Pertama",
        home: FormData(),
        
        );
  }
}

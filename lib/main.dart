import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff332b25),
        appBar: AppBar(
          backgroundColor: Colors.brown[800],
          title: const Text("Virtual Vidente"),
        ),
        body: Vidente(),
      ),
    );
  }
}

class Vidente extends StatefulWidget {
  const Vidente({super.key});

  @override
  State<Vidente> createState() => _VidenteState();
}

class _VidenteState extends State<Vidente> {

  int numeroDaImagem = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(onPressed: (){

        setState(() {
          numeroDaImagem =  Random().nextInt(5) + 2;
        });


        print(numeroDaImagem);

      }, child: Image.asset('images/vidente$numeroDaImagem.png'),)
    );
  }
}

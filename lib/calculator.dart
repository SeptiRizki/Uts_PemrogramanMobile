import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(calculator());
}

class calculator extends StatelessWidget {
  const calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LamanUtama(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
    );
  }
}

class LamanUtama extends StatefulWidget {
  const LamanUtama({super.key});

  @override
  State<LamanUtama> createState() => _LamanUtamaState();
}

class _LamanUtamaState extends State<LamanUtama> {
  @override
  Widget build(BuildContext context) {
    TextEditingController conBil1 = TextEditingController();
    TextEditingController conBil2 = TextEditingController();
    TextEditingController conHasil = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          title: Text("Latihan"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
            runSpacing: 10,
            children: [
              Center(child: Text("Kalkulator sederhana")),
              TextField(
                controller: conBil1,
                decoration: InputDecoration(
                  label: Text("Bilangan1"),
                  border: OutlineInputBorder(),
                ),
              ),
              TextField(
                controller: conBil2,
                decoration: InputDecoration(
                  label: Text("Bilangan2"),
                  border: OutlineInputBorder(),
                ),
              ),
              TextField(
                controller: conHasil,
                decoration: InputDecoration(
                  label: Text("Bilangan Hasil"),
                  border: OutlineInputBorder(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: 85,
                      child: ElevatedButton(
                          onPressed: () {
                            double bilangan1 = double.parse(conBil1.text);
                            double bilangan2 = double.parse(conBil2.text);
                            double Hasil = bilangan1 + bilangan2;

                            conHasil.text = Hasil.toString();
                          },
                          child: Text("Tambah"))),
                  SizedBox(
                      width: 85,
                      child: ElevatedButton(
                          onPressed: () {
                            double bilangan1 = double.parse(conBil1.text);
                            double bilangan2 = double.parse(conBil2.text);
                            double Hasil = bilangan1 - bilangan2;

                            conHasil.text = Hasil.toString();
                          },
                          child: Text("Kurang"))),
                  SizedBox(
                      width: 85,
                      child: ElevatedButton(
                          onPressed: () {
                            double bilangan1 = double.parse(conBil1.text);
                            double bilangan2 = double.parse(conBil2.text);
                            double Hasil = bilangan1 * bilangan2;

                            conHasil.text = Hasil.toString();
                          },
                          child: Text("Kali"))),
                  SizedBox(
                      width: 85,
                      child: ElevatedButton(
                          onPressed: () {
                            double bilangan1 = double.parse(conBil1.text);
                            double bilangan2 = double.parse(conBil2.text);
                            double Hasil = bilangan1 / bilangan2;

                            conHasil.text = Hasil.toString();
                          },
                          child: Text("Bagi"))),
                ],
              ),
              Center(child: Text("Septi Rizki")),
            ],
          ),
        ));
  }
}
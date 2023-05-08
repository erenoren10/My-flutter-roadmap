import 'package:flutter/material.dart';
import 'package:temeldenzirveye/amerika/home_view.dart';

class EkranS extends StatefulWidget {
  const EkranS({super.key});

  @override
  State<EkranS> createState() => _EkranSState();
}

class _EkranSState extends State<EkranS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          "Amerikaya Uçurma Simülasyonu",
        )),
      ),
      body: Column(
        children: const [
          Expanded(child: HomeView()),
        ],
      ),
    );
  }
}

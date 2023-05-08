import 'package:flutter/material.dart';
import 'package:temeldenzirveye/101/renksy.dart';

class lifecycle extends StatefulWidget {
  const lifecycle({super.key});

  @override
  State<lifecycle> createState() => _lifecycleState();
}

class _lifecycleState extends State<lifecycle> with constant {
  Color? backgroundcolor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff0D1321),
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    backgroundcolor = Color(0xff0D1321);
                  });
                },
                icon: Icon(Icons.clear))
          ],
        ),
        body: Column(
          children: [
            Expanded(
                child: renksy(
              initialcolor: backgroundcolor,
            ))
          ],
        ));
  }
}

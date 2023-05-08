import 'package:flutter/material.dart';
import 'package:temeldenzirveye/abstracr.dart';

class Navigationln extends StatefulWidget {
  const Navigationln({super.key});

  @override
  State<Navigationln> createState() => _NavigationlnState();
}

class _NavigationlnState extends State<Navigationln> with navigatorpg {
  Color anacolor = Colors.red;

  @override
  void initState() {
    super.initState();
    print("eren");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Placeholder(
            color: anacolor,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          navigatortowidget(context, const Abstracr());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

mixin navigatorpg {
  void navigatortowidget(BuildContext context, Widget widget) {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => Abstracr()),
      (route) => false,
    );
  }
}

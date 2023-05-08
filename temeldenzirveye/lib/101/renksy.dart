import 'package:flutter/material.dart';

class renksy extends StatefulWidget {
  const renksy({super.key, required this.initialcolor});
  final Color? initialcolor;

  @override
  State<renksy> createState() => _renksyState();
}

class _renksyState extends State<renksy> {
  Color? backgroundcolor = Colors.transparent;

  @override
  void initState() {
    super.initState();
    backgroundcolor = widget.initialcolor ?? Color(0xff0D1321);
  }

  @override
  void didUpdateWidget(covariant renksy oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialcolor != backgroundcolor && widget.initialcolor != null) {
      degistir(widget.initialcolor!);
    }
  }

  void degistir(Color color) {
    setState(() {
      backgroundcolor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(onTap: colorontap, items: [
        BottomNavigationBarItem(
            icon: Text(
              "R",
              style: stilr(constant.red),
            ),
            label: "----"),
        BottomNavigationBarItem(
            icon: Text(
              "B",
              style: stilr(constant.blue),
            ),
            label: "----"),
        BottomNavigationBarItem(
            icon: Text(
              "Y",
              style: stilr(constant.yellow),
            ),
            label: "----"),
      ]),
    );
  }

  void colorontap(value) {
    if (value == mycolors.red.index) {
      degistir(constant.red);
    } else if (value == mycolors.blue.index) {
      degistir(constant.blue);
    } else {
      degistir(constant.yellow);
    }
  }

  TextStyle stilr(Color renk) {
    return TextStyle(
        decoration: TextDecoration.lineThrough, color: renk, fontSize: 25);
  }
}

enum mycolors { red, blue, yellow }

class constant {
  static Color red = Colors.red;
  static Color blue = Colors.blue;
  static Color yellow = Colors.yellow;
  static Color pink = Colors.pink;
}

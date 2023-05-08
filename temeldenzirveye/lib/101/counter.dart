import 'package:flutter/material.dart';

class Counterln extends StatefulWidget {
  const Counterln({super.key});

  @override
  State<Counterln> createState() => _CounterlnState();
}

class _CounterlnState extends State<Counterln> {
  int _sonuc = 0;

  void update(bool ist) {
    if (ist) {
      _sonuc = _sonuc + 5;
    } else {
      _sonuc = _sonuc - 5;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.format_align_left_rounded),
        title: Center(child: Text("COUNTER UYGULAMASI")),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add_alert_outlined))
        ],
      ),
      extendBody: true,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://picsum.photos/200/300"),
            fit: BoxFit.cover,
            opacity: .5,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text("NE KADAR BASTIN:")),
            Center(
              child: Text(
                _sonuc.toString(),
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _increment(),
          Padding(padding: EdgeInsets.only(left: 8)),
          _deincrement(),
        ],
      ),
    );
  }

  FloatingActionButton _deincrement() {
    return FloatingActionButton.extended(
      onPressed: () {
        update(true);
      },
      label: Row(
        children: [
          Text("İleri"),
          Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
          Icon(Icons.arrow_circle_right_outlined)
        ],
      ),
    );
  }

  FloatingActionButton _increment() {
    return FloatingActionButton.extended(
      onPressed: () {
        update(false);
      },
      label: Row(
        children: [
          Icon(Icons.arrow_circle_left_outlined),
          Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
          Text("Geri")
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:temeldenzirveye/navigation.dart';

class Abstracr extends StatefulWidget {
  const Abstracr({super.key});

  @override
  State<Abstracr> createState() => _AbstracrState();
}

class _AbstracrState extends State<Abstracr> {
  late final List<collections> _items;

  @override
  void initState() {
    super.initState();
    _items = [
      collections(
          imagepath: 'https://picsum.photos/200',
          title: "Abstracr1",
          price: 3.14),
      collections(
          imagepath: 'https://picsum.photos/200',
          title: "Abstracr2",
          price: 3.14),
      collections(
          imagepath: 'https://picsum.photos/200',
          title: "Abstracr3",
          price: 3.14),
      collections(
          imagepath: 'https://picsum.photos/200',
          title: "Abstracr4",
          price: 3.14)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          padding: EdgeInsets.only(left: 25, right: 25, top: 20),
          itemCount: _items.length,
          itemBuilder: (context, index) {
            return Card(
              child: SizedBox(
                height: 300,
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(vertical: 15)),
                    ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        child: Image.network(
                          _items[index].imagepath,
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(_items[index].title),
                        Text("${_items[index].price}")
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => Navigationln()),
          (route) => false,
        );
      }),
    );
  }
}

class collections {
  final String imagepath;
  final String title;
  final double price;

  collections(
      {required this.imagepath, required this.title, required this.price});
}

// image.network('https://picsum.photos/200')

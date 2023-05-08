import 'package:flutter/material.dart';
import 'package:temeldenzirveye/101/renksy.dart';

class Listview extends StatefulWidget {
  const Listview({super.key});

  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          FittedBox(
            child: Text(
              "MERHABA",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          Container(
            color: Colors.red,
            height: 300,
          ),
          Divider(),
          SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(color: Colors.green, width: 100),
                  Container(color: Colors.white, width: 100),
                  Container(color: Colors.green, width: 100),
                  Container(color: Colors.white, width: 100),
                  Container(color: Colors.green, width: 100),
                ],
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_downward_outlined)),
          FittedBox(
            child: Text(
              "MERHABA",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          Container(
            color: Colors.red,
            height: 300,
          ),
          Divider(),
          SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(color: Colors.green, width: 100),
                  Container(color: Colors.white, width: 100),
                  Container(color: Colors.green, width: 100),
                  Container(color: Colors.white, width: 100),
                  Container(color: Colors.green, width: 100),
                ],
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_downward_outlined)),
          FittedBox(
            child: Text(
              "MERHABA",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          Container(
            color: Colors.red,
            height: 300,
          ),
          Divider(),
          SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(color: Colors.green, width: 100),
                  Container(color: Colors.white, width: 100),
                  Container(color: Colors.green, width: 100),
                  Container(color: Colors.white, width: 100),
                  Container(color: Colors.green, width: 100),
                ],
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_downward_outlined)),
          _listdem()
        ],
      ),
    );
  }
}

class _listdem extends StatefulWidget {
  const _listdem({super.key});

  @override
  State<_listdem> createState() => __listdemState();
}

class __listdemState extends State<_listdem> {
  @override
  void initState() {
    super.initState();
    print("hello");
  }

  @override
  void dispose() {
    super.dispose();
    print("exit");
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

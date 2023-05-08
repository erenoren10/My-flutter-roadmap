import 'package:flutter/material.dart';

class Tabbarln extends StatefulWidget {
  const Tabbarln({super.key});

  @override
  State<Tabbarln> createState() => _TabbarlnState();
}

class _TabbarlnState extends State<Tabbarln> with TickerProviderStateMixin {
  late final TabController _tabcontroller;
  Text text1 = Text("Tabbar");

  @override
  void initState() {
    super.initState();
    _tabcontroller = TabController(length: _mytabs.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _mytabs.values.length,
        child: Scaffold(
          extendBody: true,
          appBar: AppBar(
            title: Center(child: text1),
          ),
          floatingActionButton: FloatingActionButton(
              onPressed: () {
                _tabcontroller.animateTo(0);
              },
              child: Icon(Icons.add)),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
            notchMargin: 10,
            shape: CircularNotchedRectangle(),
            child: TabBar(
                tabs:
                    _mytabs.values.map((e) => Tab(text: "${e.name}")).toList()),
          ),
          body: TabBarView(
            controller: _tabcontroller,
            children: [
              Container(
                color: Color(0xff456990),
              ),
              Container(
                color: Color(0xff49dcb1),
              ),
            ],
          ),
        ));
  }
}

enum _mytabs { home, room }

extension _mytabsextension on _mytabs {}

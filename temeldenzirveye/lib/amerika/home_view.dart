import 'package:flutter/material.dart';
import 'package:temeldenzirveye/amerika/ucak.dart';
import 'package:temeldenzirveye/amerika/yakit.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff86615C),
      //appbar

      //Body
      body: <Widget>[
        Container(),
        yakitEkle(),
        /* Container(
          color: Color(0xffC5D86D),
          alignment: Alignment.center,
          child: const Text('Page 3'),
        ),*/
      ][currentPageIndex],
      //Floatingactionbutton

      //Drawer
      drawer: Drawer(),
      //Flaotingactionbuttonlocation
      // Bottomnavbar
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(Icons.airplanemode_active),
            icon: Icon(Icons.airplanemode_inactive),
            label: 'Uç',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.local_gas_station_rounded),
            icon: Icon(Icons.local_gas_station_outlined),
            label: 'Doldur',
          ),
          /*   NavigationDestination(
            selectedIcon: Icon(Icons.add_road),
            icon: Icon(Icons.remove_road),
            label: 'Ekle',
          )*/
        ],
      ),
    );
  }
}

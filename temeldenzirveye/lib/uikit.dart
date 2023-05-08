import 'package:flutter/material.dart';

class uikit extends StatelessWidget {
  const uikit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customappbar(title: "story"),
      body: ekranozel(),
    );
  }
}

class ekranozel extends StatelessWidget {
  const ekranozel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Card(
            margin: EdgeInsets.only(bottom: 10),
            color: Color(0xffF4FAFF),
            elevation: 100,
            shape: StadiumBorder(),
            child: SizedBox(
              width: 400,
              height: 100,
              child: Center(child: Text("EREN")),
            ),
          ),
          Card(
            color: Color(0xffF4FAFF),
            elevation: 100,
            child: Container(
              height: 569,
            ),
          )
        ],
      ),
    );
    ;
  }
}

class customappbar extends StatelessWidget implements PreferredSizeWidget {
  const customappbar({super.key, required this.title});
  final String title;

  @override
  Size get preferredSize => const Size.fromHeight(75);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(title),
        ],
      ),
      leading: Icon(
        Icons.arrow_left_outlined,
        size: 50,
      ),
      actions: [Icon(Icons.notifications_off_outlined)],
      centerTitle: true,
      iconTheme: IconThemeData(color: Color(0xff212529), size: 35),
      titleTextStyle: TextStyle(
          color: Color(0xff212529), fontSize: 25, fontWeight: FontWeight.bold),
    );
  }
}

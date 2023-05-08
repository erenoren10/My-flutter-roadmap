import 'package:flutter/material.dart';

class dsayfaln extends StatelessWidget {
  const dsayfaln({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFEDDF),
      appBar: AppBar(),
      extendBody: true,
      body: Column(
        children: [
          Expanded(
              flex: 4, child: Container(height: 50, color: Color(0xff0D1321))),
          Expanded(
              flex: 2, child: Container(height: 20, color: Color(0xffC5D86D))),
          Expanded(
              flex: 2, child: Container(height: 20, color: Color(0xff86615C))),
          Expanded(
              flex: 2, child: Container(height: 20, color: Color(0xffAFE0CE))),
        ],
      ),
    );
  }
}

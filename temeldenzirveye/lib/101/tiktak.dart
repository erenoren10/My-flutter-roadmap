import 'package:flutter/material.dart';

class TiktakEkran extends StatelessWidget with renk {
  TiktakEkran({super.key});

  String text = "indir\nabone ol";
  String text2 = "bak\naraba yaptın";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffC80815),
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70),
        child: Column(
          children: [
            Dekorasyon(
              Color: pembe,
              yazi: text,
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            Dekorasyon1(
              Color: siyah,
              yazi: text2,
            ),
            SizedBox(
              height: 350,
              child: Image.asset("assets/png/araba.png"),
            ),
            Text(
              "tiktak",
              style: TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}

class renk {
  final Color kirmizi = Colors.red;
  final Color siyah = Colors.black;
  final Color pembe = Colors.pink;
}

class Dekorasyon extends StatelessWidget with renk {
  Dekorasyon({
    super.key,
    this.Color,
    this.yazi,
  });
  final yazi;
  final Color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 500,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          children: [
            Text(
              yazi,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Colors.white,
                letterSpacing: 2,
              ),
            ),
            tikstil(),
          ],
        ),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Color,
          boxShadow: [
            BoxShadow(
              color: Colors.black87.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(3, 3),
            )
          ] // horizontal, vertical offset]
          ),
    );
  }
}

class Dekorasyon1 extends StatelessWidget with renk {
  Dekorasyon1({
    super.key,
    this.Color,
    this.yazi,
  });
  final yazi;
  final Color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 500,
      child: Padding(
        padding: const EdgeInsets.only(left: 50),
        child: Row(
          children: [
            Text(
              yazi,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Colors.white,
                letterSpacing: 2,
              ),
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Color,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(2, 2),
            )
          ] // horizontal, vertical offset]
          ),
    );
  }
}

class tikstil extends StatelessWidget with renk {
  tikstil({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 45),
        decoration: BoxDecoration(color: kirmizi, shape: BoxShape.circle),
        child: Icon(
          Icons.check,
          color: Colors.white,
          size: 90,
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Bsayfa extends StatelessWidget {
  const Bsayfa({super.key});
  final title = "Crate you first Note";
  final subtitle = "İlk Notunuzu yaratın";
  final btntext = "Create A Note";
  final tbtntext = "İmport Notes";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(),
      body: Padding(
        padding: PaddingItems.horizontalpadding + PaddingItems.bottompadding,
        child: Column(
          children: [
            PngItems(name: pngName.applebook),
            Text(title, style: Textstil.bs),
            Padding(padding: PaddingItems.verticalpadding),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: Textstil.ybs,
            ),
            Padding(padding: PaddingItems.toppadding),
            btnstil(text: btntext),
            tbtnstil(tbtntext: tbtntext)
          ],
        ),
      ),
    );
  }
}

class tbtnstil extends StatelessWidget {
  const tbtnstil({
    super.key,
    required this.tbtntext,
  });

  final String tbtntext;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: SizedBox(height: 50, child: Center(child: Text(tbtntext))));
  }
}

class Textstil {
  static final TextStyle bs = TextStyle(
      color: Colors.black87,
      fontSize: 28,
      fontWeight: FontWeight.bold,
      wordSpacing: 3);
  static final TextStyle ybs = TextStyle(
      color: Colors.black54, fontSize: 15, fontWeight: FontWeight.bold);
}

class pngName {
  static final String applebook = "applebook";
}

class PngItems extends StatelessWidget {
  const PngItems({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/png/$name.png");
  }
}

class PaddingItems {
  static const EdgeInsets horizontalpadding =
      EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets bottompadding = EdgeInsets.only(bottom: 20);
  static const EdgeInsets toppadding = EdgeInsets.only(top: 40);

  static const EdgeInsets verticalpadding = EdgeInsets.symmetric(vertical: 15);
}

class btnstil extends StatelessWidget {
  const btnstil({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: SizedBox(
          height: 50,
          child: Center(
              child: Text(
            text,
            style: TextStyle(fontSize: 20, letterSpacing: 3),
          )),
        ));
  }
}

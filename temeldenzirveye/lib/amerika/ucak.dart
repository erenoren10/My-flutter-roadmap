import 'package:flutter/material.dart';
import 'package:temeldenzirveye/amerika/yakit.dart';

class ucak extends StatefulWidget {
  ucak({super.key, required this.depo});
  int depo;

  @override
  State<ucak> createState() => _ucakState();
}

class _ucakState extends State<ucak> {
  @override
  void didUpdateWidget(covariant ucak oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.depo != widget.depo) {
      setState(() {
        oldWidget.depo = widget.depo;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffAFE0CE),
        alignment: Alignment.center,
        child: Text('KUZEY ATLAS \n  OKYANUSU'),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.extended(
            heroTag: "btn1",
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) => Container(
                        height: 200,
                        child: Center(
                            child: widget.depo == 0
                                ? Text("YAKIT YOK")
                                : Text(
                                    "Başarılı bir şekilde Amerikaya gittiniz yakıtınız şu kadar kaldı: " +
                                        (widget.depo -= 1).toString())),
                      ));
            },
            label: Column(
              children: [
                Icon(
                  Icons.airplanemode_on,
                  size: 30,
                ),
                Text("UÇAĞI ÇALIŞTIR"),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 5)),
          FloatingActionButton.extended(
            heroTag: "btn2",
            onPressed: () {
              Navigator.pop(context);
            },
            label: Text("Uçaktan inmek için taklayın"),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

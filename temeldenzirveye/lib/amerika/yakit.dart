import 'package:flutter/material.dart';
import 'package:temeldenzirveye/amerika/ucak.dart';

class yakitEkle extends StatefulWidget {
  const yakitEkle({super.key});

  @override
  State<yakitEkle> createState() => _yakitEkleState();
}

class _yakitEkleState extends State<yakitEkle> {
  int yakit = 0;
  void update(bool ist) {
    if (ist) {
      yakit++;
    } else {
      if (yakit <= 0) {
        showModalBottomSheet(
            context: context,
            builder: (context) => Container(
                height: 200,
                child: Center(child: Text("Boşaltılacak yakıt yok"))));
      } else {
        yakit--;
      }
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff0D1321),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("yakıt:$yakit"),
                ElevatedButton(
                    onPressed: () {
                      update(true);
                    },
                    child: Text("yakıt eklemek için bas")),
                ElevatedButton(
                    onPressed: () {
                      update(false);
                    },
                    child: Text("yakıt Çıkarmak için bas")),
                ElevatedButton(
                  onPressed: () {
                    /*     if (yakit == 0) {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Yakıt yok'),
                            content: Text('Yakıt yüklemeyi deneyin'),
                            actions: <Widget>[
                              TextButton(
                                child: Text('İptal'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                              TextButton(
                                child: Text('Tamam'),
                                onPressed: () {
                                  // Tamam butonuna tıklandığında yapılacak işlemler burada yer alabilir.
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    } else {*/
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ucak(
                                  depo: yakit,
                                )));
                  },
                  /*  },*/
                  child: Text("Uçağa binmek için bas"),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:temeldenzirveye/202/service.dart';
import 'package:temeldenzirveye/abstracr.dart';
import 'package:temeldenzirveye/amerika/ekran.dart';
import 'package:temeldenzirveye/bsayfa.dart';
import 'package:temeldenzirveye/101/counter.dart';
import 'package:temeldenzirveye/amerika/home_view.dart';
import 'package:temeldenzirveye/lifecycle.dart';
import 'package:temeldenzirveye/listview.dart';
import 'package:temeldenzirveye/navigation.dart';
import 'package:temeldenzirveye/101/renksy.dart';
import 'package:temeldenzirveye/tabbar.dart';
import 'package:temeldenzirveye/uikit.dart';
import 'package:temeldenzirveye/101/dsayfa.dart';

import '202/service-post.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(backgroundColor: Color(0xffeeb868)),
          appBarTheme: AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle.light,
            color: Colors.transparent,
            elevation: 0,
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Colors.transparent,
          ),
          iconTheme: IconThemeData(color: Colors.white)),
      home: Servicepostln(),
    );
  }
}

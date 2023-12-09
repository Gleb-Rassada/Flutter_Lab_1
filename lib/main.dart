import 'package:flutter/material.dart';
import 'package:flutter_lab01_rassada/card1.dart';
import 'package:flutter_lab01_rassada/card2.dart';
import 'package:flutter_lab01_rassada/header.dart';
import 'package:flutter_lab01_rassada/tariff1.dart';
import 'package:flutter_lab01_rassada/tariff2.dart';
import 'package:flutter_lab01_rassada/tariff3.dart';
import 'package:flutter_lab01_rassada/text3.dart';
import 'package:flutter_lab01_rassada/text2.dart';
import 'package:flutter_lab01_rassada/text1.dart';
import 'package:flutter_lab01_rassada/tags.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              Container(
                alignment: Alignment.centerLeft,
                width: 185,
                child: Divider(
                  height: 10,
                  thickness: 3,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 18.0),
              Text1(),
              const SizedBox(height: 18.0),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 216.0,
                        height: 135.0,
                        child: Card1(),
                      ),
                      SizedBox(
                        width: 216.0,
                        height: 135.0,
                        child: Card2(),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 32.0),
              Text2(),
              Tariff1(),
              Container(
                padding: const EdgeInsets.only(left: 64.0),
                child: const Divider(),
              ),
              Tariff2(),
              Container(
                padding: const EdgeInsets.only(left: 64.0),
                child: const Divider(),
              ),
              Tariff3(),
              const SizedBox(height: 18.0),
              Text3(),
              const SizedBox(height: 18.0),
              Tags(),
              const SizedBox(height: 40.0),
            ],
          ),
        ),
      ),
    );
  }
}

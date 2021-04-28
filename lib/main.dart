import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: GelleryApp(),
    ),
  );
}

class GelleryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcce7ff),
      body: Container(
        clipBehavior: Clip.hardEdge,
        margin: EdgeInsets.all(30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  CustomCard(
                    cardColor: 'green',
                    backColor: Color(0xffeafff1),
                    textColor: Color(0xff29a059),
                  ),
                  CustomCard(
                    cardColor: 'red',
                    backColor: Color(0xfff7f0fc),
                    textColor: Color(0xffc55b65),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  CustomCard(
                    cardColor: 'yellow',
                    backColor: Color(0xfff9f3e7),
                    textColor: Color(0xffeca814),
                  ),
                  CustomCard(
                    cardColor: 'blue',
                    backColor: Color(0xffe8f7ff),
                    textColor: Color(0xff6886d8),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  CustomCard(
                    cardColor: 'green',
                    backColor: Color(0xffeafff1),
                    textColor: Color(0xff29a059),
                  ),
                  CustomCard(
                    cardColor: 'red',
                    backColor: Color(0xfff7f0fc),
                    textColor: Color(0xffc55b65),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String cardColor;
  final Color backColor;
  final Color textColor;

  CustomCard({this.cardColor, this.backColor, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: backColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 75,
              height: 75,
              clipBehavior: Clip.hardEdge,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Image.asset(
                'images/$cardColor.png',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '$cardColor image',
              style: TextStyle(
                color: textColor,
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

import 'package:islami_app/app_them.dart';

class SebhaTabs extends StatefulWidget {
  static const String routeName = "/SebhaTab";
  const SebhaTabs({super.key});

  @override
  _SebhaTabsState createState() => _SebhaTabsState();
}

class _SebhaTabsState extends State<SebhaTabs>
    with SingleTickerProviderStateMixin {
  int counter = 0;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
  }

  String getSebhaText() {
    if (counter < 33) {
      return 'سبحان الله';
    } else if (counter < 66) {
      return 'الحمد لله';
    } else {
      return 'الله أكبر';
    }
  }

  void incrementCounter() {
    setState(() {
      counter = (counter + 1) % 100;
      _controller.forward(from: 0.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40),
            Expanded(
              flex: 6,
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      GestureDetector(
                        onTap: incrementCounter,
                        child: RotationTransition(
                          turns:
                              Tween(begin: 0.0, end: .1).animate(_controller),
                          child: Container(
                            width: 232,
                            height: 234,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/body_sebha_logo.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: -75,
                        left: 103,
                        child: Container(
                          width: 73,
                          height: 105,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/head_sebha_logo.png"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Text(
                    'عدد التسبيحات',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Container(
                    width: 69,
                    height: 81,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xffc9b496),
                    ),
                    child: Center(
                      child: Text(
                        counter.toString(),
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Container(
                    width: 137,
                    height: 51,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: AppThem.lightPrimary,
                    ),
                    child: Center(
                      child: Text(
                        getSebhaText(),
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

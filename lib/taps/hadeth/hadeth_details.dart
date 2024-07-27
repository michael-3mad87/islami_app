import 'package:flutter/material.dart';
import 'package:islami_app/app_them.dart';
import 'package:islami_app/taps/hadeth/hadeth.dart';

class HadethDetailsSCreen extends StatelessWidget {
  static const String routeName = '/HadethDetails';
   HadethDetailsSCreen({super.key});
  late Hadeth args;

  @override
  Widget build(BuildContext context) {
    args = ModalRoute.of(context)!.settings.arguments as Hadeth;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/default_bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.title),
        ),
        body: Container(
          padding: EdgeInsets.all(30),
          margin: EdgeInsets.all(40),
          decoration: BoxDecoration(
              color: AppThem.white, borderRadius: BorderRadius.circular(30)),
          child: ListView.builder(
                  itemCount: args.content.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Text(
                      args.content[index],
                      style: AppThem.lightThem.textTheme.titleLarge,
                      textAlign: TextAlign.center,
                    );
                  },
                ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:islami_app/taps/quran/quran_tab.dart';

class SuraDetails extends StatelessWidget {
  const SuraDetails({super.key});
  static const String routeName = "/SuraDetails";
  @override
  Widget build(BuildContext context) {
  SuraModel args = ModalRoute.of(context)!.settings.arguments as SuraModel;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/default_bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.suraName),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/app_them.dart';
import 'package:islami_app/taps/quran/quran_tab.dart';

class SuraDetails extends StatefulWidget {
  SuraDetails({super.key});
  static const String routeName = "/SuraDetails";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List ayat = [];
  late SuraModel args;
  @override
  Widget build(BuildContext context) {
    args = ModalRoute.of(context)!.settings.arguments as SuraModel;
    suraLoading();
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
        body: Container(
          padding: EdgeInsets.all(30),
          margin: EdgeInsets.all(40),
          decoration: BoxDecoration(
              color: AppThem.white, borderRadius: BorderRadius.circular(30)),
          child: ayat.isEmpty
              ? Center(child: CircularProgressIndicator(),)
              : ListView.builder(
                  itemCount: ayat.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Text(
                      ayat[index],
                      style: AppThem.lightThem.textTheme.titleLarge,
                      textAlign: TextAlign.center,
                    );
                  },
                ),
        ),
      ),
    );
  }

  Future<void> suraLoading() async {
    String sura = await rootBundle
        .loadString('assets/files/${args.indexForSura + 1}.txt');
    ayat = sura.split('\r\n');
    setState(() {});
  }
}

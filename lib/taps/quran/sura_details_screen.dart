import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/app_them.dart';
import 'package:islami_app/taps/quran/quran_tab.dart';
import 'package:islami_app/taps/setting/settingProvider.dart';
import 'package:provider/provider.dart';

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
       SettingProvider settingProvider = Provider.of<SettingProvider>(context);
  if(ayat.isEmpty) { suraLoading();}
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage( settingProvider.themMode== ThemeMode.light ?"assets/images/default_bg.png":"assets/images/dark_bg.png"),
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
              color: settingProvider.themMode== ThemeMode.light? AppThem.white:AppThem.darkPrimary, borderRadius: BorderRadius.circular(30)),
          child: ayat.isEmpty
              ? Center(child: CircularProgressIndicator(),)
              : ListView.builder(
                  itemCount: ayat.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Text(
                      ayat[index],
                      style:Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 25),
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

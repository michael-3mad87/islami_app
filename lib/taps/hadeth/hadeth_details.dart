import 'package:flutter/material.dart';
import 'package:islami_app/app_them.dart';
import 'package:islami_app/taps/hadeth/hadeth.dart';
import 'package:islami_app/taps/setting/settingProvider.dart';
import 'package:provider/provider.dart';

class HadethDetailsSCreen extends StatelessWidget {
  static const String routeName = '/HadethDetails';
   HadethDetailsSCreen({super.key});
  late Hadeth args;

  @override
  Widget build(BuildContext context) {
    args = ModalRoute.of(context)!.settings.arguments as Hadeth;
       SettingProvider settingProvider = Provider.of<SettingProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(settingProvider.themMode== ThemeMode.light ?"assets/images/default_bg.png":"assets/images/dark_bg.png"),
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
              color:  settingProvider.themMode== ThemeMode.light? AppThem.white:AppThem.darkPrimary, borderRadius: BorderRadius.circular(30)),
          child: ListView.builder(
                  itemCount: args.content.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Text(
                      args.content[index],
                      style:Theme.of(context). textTheme.titleLarge!.copyWith(fontSize: 25),
                      textAlign: TextAlign.center,
                    );
                  },
                ),
        ),
      ),
    );
  }
}

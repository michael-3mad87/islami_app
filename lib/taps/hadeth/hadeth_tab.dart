import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/app_them.dart';
import 'package:islami_app/taps/hadeth/hadeth.dart';
import 'package:islami_app/taps/hadeth/hadeth_details.dart';
import 'package:islami_app/taps/setting/settingProvider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadethTabs extends StatefulWidget {
  static const String routeName = "/hadethTab";
  HadethTabs({super.key});

  @override
  State<HadethTabs> createState() => _HadethTabsState();
}

class _HadethTabsState extends State<HadethTabs> {
  List<Hadeth> ahadeth = [];

  @override
  Widget build(BuildContext context) {
       SettingProvider settingProvider = Provider.of<SettingProvider>(context);
 if(ahadeth.isEmpty) {loadAhadeth();}
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Image.asset('assets/images/hadeth_logo.png'),
          ),
         Divider(
            thickness: 3,
            color: settingProvider.themMode== ThemeMode.light ? AppThem.lightPrimary:AppThem.gold,
          ),
          Expanded(
            flex: 7,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.ahadeths,
                       style: Theme.of(context).textTheme.headlineLarge
                    ),
                  ],
                ),
               Divider(
            thickness: 3,
            color: settingProvider.themMode== ThemeMode.light ? AppThem.lightPrimary:AppThem.gold,
          ),
                Expanded(
                  child: ahadeth.isEmpty
              ? Center(child: CircularProgressIndicator(),)
              : ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(height: 8),
                    itemCount: ahadeth.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(HadethDetailsSCreen.routeName , arguments: ahadeth[index]);
                              
                        },
                        child: Text(
                          ahadeth[index].title,
                          style: Theme.of(context).textTheme.headlineSmall,
                          textAlign: TextAlign.center,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> loadAhadeth() async {
    String ahadethFileContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> ahadethText = ahadethFileContent.split('#');
    ahadeth = ahadethText.map((hadethText) {
      List<String> hadethLines = hadethText.trim().split('\n');
      String title = hadethLines.first;
      hadethLines.removeAt(0);
      List<String> content = hadethLines;
      return Hadeth(content: content, title: title);
    }).toList();
    setState(() {});
  }
}
/*this map for convert list form type to another type in this map
that take (this  one element that be converted ) => func that implement The list to be transferred to 
*/

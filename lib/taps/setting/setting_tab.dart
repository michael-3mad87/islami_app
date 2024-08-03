import 'package:flutter/material.dart';
import 'package:islami_app/app_them.dart';
import 'package:islami_app/taps/setting/settingProvider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingTabs extends StatelessWidget {
  static const String routeName = "/SettingTab";
  const SettingTabs({super.key});

  @override
  Widget build(BuildContext context) {
    SettingProvider settingProvider = Provider.of<SettingProvider>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.darkmode,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Switch(
                  value: settingProvider.themMode == ThemeMode.dark,
                  onChanged: (value) {
                    settingProvider
                        .changeTheme(value ? ThemeMode.dark : ThemeMode.light);
                  },
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.language,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                      value: settingProvider.language,
                      items: [
                        DropdownMenuItem(
                          value: 'en',
                          child: Text("English" , style: TextStyle(  color:settingProvider.themMode== ThemeMode.light ? AppThem.black :AppThem.white,),),
                        ),
                        DropdownMenuItem(
                          value: 'ar',
                          child: Text("العربية",style: TextStyle(  color:settingProvider.themMode== ThemeMode.light ? AppThem.black :AppThem.white,),),
                        ),
                      ],
                      onChanged: (selectedLanguage) {
                        if (selectedLanguage == null) return;
                        settingProvider.changeLanguage(selectedLanguage);
                      },
                      borderRadius: BorderRadius.circular(15),
                      ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

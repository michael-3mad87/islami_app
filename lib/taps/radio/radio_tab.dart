import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islami_app/app_them.dart';
import 'package:islami_app/taps/radio/custom_icon.dart';
import 'package:islami_app/taps/setting/settingProvider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RadioTabs extends StatelessWidget {
  static const String routeName = "/RadioTab";
  const RadioTabs({super.key});

  @override
  Widget build(BuildContext context) {
    SettingProvider settingProvider = Provider.of<SettingProvider>(context);
    return Center(
      child: Column(
        children: [
          
          Expanded(
            flex: 7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 232,
                  height: 234,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(settingProvider.themMode == ThemeMode.light
                          ? "assets/images/radio_image.png"
                          : "assets/images/radio_image.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: Column(
                children: [
                  Text(AppLocalizations.of(context)!.holyQuranRadio,
                      style: Theme.of(context).textTheme.headlineSmall),
                      SizedBox(height: 45,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomIcon(icon: Icons.skip_previous, size: 45),
                            CustomIcon(icon: Icons.play_arrow, size: 45),
                              CustomIcon(icon: Icons.skip_next, size: 45),
                        ],
                      )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

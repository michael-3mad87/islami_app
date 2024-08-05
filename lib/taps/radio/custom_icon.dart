import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islami_app/app_them.dart';
import 'package:islami_app/taps/setting/settingProvider.dart';
import 'package:provider/provider.dart';
class CustomIcon extends StatelessWidget {
    IconData icon;
    double size ;
   CustomIcon({super.key , required this.icon ,required this.size });

  @override
  Widget build(BuildContext context) {
      SettingProvider settingProvider = Provider.of<SettingProvider>(context);
    return Icon(icon , color: settingProvider.themMode== ThemeMode.light ? AppThem.lightPrimary:AppThem.gold, size:size ,);
    
  }
}

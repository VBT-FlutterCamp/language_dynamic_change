import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:language_easylocalization/core/constants/language_manager.dart';

import 'core/constants/app_constans.dart';
import 'feature/view/home_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
      child: MyApp(),
      supportedLocales: [LanguageManager.instance.enLocale, LanguageManager.instance.trLocale],
      path: AppConstants.langAssetsPath));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: HomeView());
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../core/init/lang/locale_keys.g.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleKeys.appBar_tittle.tr(args: ['Beyza']),
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('https://picsum.photos/seed/picsum/200/300'),
            Text(
              LocaleKeys.main_descriptionImage.tr(),
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(LocaleKeys.main_schoolName.tr()),
            Text(LocaleKeys.main_schoolNameCounStudent.tr(args: ['10 ', '4']))
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '/moduls/hadeth/hadeth_view.dart';
import '/moduls/quran/quran_view.dart';
import '/moduls/radio/radio_view.dart';
import '/moduls/settings/settings_view.dart';
import '/moduls/tasbeh/tasbeh_view.dart';

class LayOutView extends StatefulWidget {
  static const String routeName = "LayOut";

  const LayOutView({super.key});

  @override
  State<LayOutView> createState() => _LayOutViewState();
}

class _LayOutViewState extends State<LayOutView> {
  int selectedIndex = 0;
  List<Widget> screensList = [
    QuranView(),
    HadethView(),
    TasbehView(),
    RadioView(),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    var lang = AppLocalizations.of(context)!;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/home_background.png"),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            lang.islami,
          ),
        ),
        body: screensList[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icons/quran_icn.png"),
              ),
              label: lang.quran,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icons/hadeth_icn.png"),
              ),
              label: lang.hadith,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icons/sebha_icn.png"),
              ),
              label: lang.tasbeh,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icons/radio_icn.png"),
              ),
              label: lang.radio,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: lang.settings,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:islami_app_c11_sun_7pm/moduls/hadeth/hadeth_view.dart';
import 'package:islami_app_c11_sun_7pm/moduls/quran/quran_view.dart';
import 'package:islami_app_c11_sun_7pm/moduls/radio/radio_view.dart';
import 'package:islami_app_c11_sun_7pm/moduls/settings/settings_view.dart';
import 'package:islami_app_c11_sun_7pm/moduls/tasbeh/tasbeh_view.dart';

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
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/home_background.png"),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("إسلامي"),
        ),
        body: screensList[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icons/quran_icn.png"),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icons/hadeth_icn.png"),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icons/sebha_icn.png"),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icons/radio_icn.png"),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}

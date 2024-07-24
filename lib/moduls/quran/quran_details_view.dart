import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_c11_sun_7pm/moduls/quran/quran_view.dart';

class QuranDetailsView extends StatefulWidget {
  static const String routName = "QuranDetails";

  const QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var data = ModalRoute.of(context)?.settings.arguments as SuraData;

    // sync
    if (content.isEmpty) loadData(data.suraNumber);

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/images/home_background.png",
            ),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("إسلامي"),
        ),
        body: Container(
          margin: const EdgeInsets.only(
            top: 10,
            bottom: 80,
            left: 30,
            right: 30,
          ),
          padding: const EdgeInsets.only(
            top: 20,
            bottom: 20,
            left: 30,
            right: 30,
          ),
          decoration: BoxDecoration(
              color: const Color(0xFFF8F8F8).withOpacity(0.8),
              borderRadius: BorderRadius.circular(15.0)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(" سورة ${data.suraName}"),
                  const SizedBox(width: 10),
                  const Icon(Icons.play_circle_fill_rounded)
                ],
              ),
              const Divider(),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                    "{${index + 1}} ${versesList[index]}",
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall?.copyWith(height: 1.8),
                  ),
                  itemCount: versesList.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String content = "";
  List<String> versesList = [];

  Future<void> loadData(String suraNumer) async {
    // async vs sync
    content = await rootBundle.loadString("assets/files/$suraNumer.txt");
    versesList = content.split("\n");
    setState(() {});
    print(content);
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_c11_sun_7pm/moduls/hadeth/hadeth_details_view.dart';

class HadethView extends StatefulWidget {
  const HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  @override
  Widget build(BuildContext context) {
    if (dataList.isEmpty) loadHadithData();
    var theme = Theme.of(context);
    return Column(
      children: [
        Image.asset(
          "assets/icons/hadith_header.png",
          scale: 3,
        ),
        const Divider(),
        Text(
          "الأحاديث",
          style: theme.textTheme.bodyLarge,
        ),
        const Divider(),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.pushNamed(context, HadithDetailsView.routeName,
                    arguments: dataList[index]);
              },
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  dataList[index].title,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ),
            itemCount: dataList.length,
          ),
        ),
      ],
    );
  }

  List<HadithData> dataList = [];

  Future<void> loadHadithData() async {
    String content = await rootBundle.loadString("assets/files/ahadeth.txt");

    List<String> allHadithData = content.split("#");
    for (int i = 0; i < allHadithData.length; i++) {
      String singleHadeth = allHadithData[i].trim();

      int titleLength = singleHadeth.indexOf("\n");

      String title = singleHadeth.substring(0, titleLength);
      String body = singleHadeth.substring(titleLength + 1);

      HadithData hadithData = HadithData(
        title: title,
        body: body,
      );

      dataList.add(hadithData);
      setState(() {});

      // print(singleHadeth);
    }
  }
}

class HadithData {
  String title;
  String body;

  HadithData({
    required this.title,
    required this.body,
  });
}

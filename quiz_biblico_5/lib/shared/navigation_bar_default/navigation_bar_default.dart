// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:gdpr_dialog/gdpr_dialog.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:quiz_biblico_5/screens/book_game/book_game.dart';
import 'package:quiz_biblico_5/screens/chat/chat_page.dart';
import 'package:quiz_biblico_5/screens/level_game/level_game.dart';
import 'package:quiz_biblico_5/screens/random_game/random_game.dart';
import 'package:quiz_biblico_5/screens/start/start_about.dart';
import 'package:quiz_biblico_5/screens/ranking_page.dart';

import 'widgets/tab_button_widget.dart';

class NavigationBarDefault extends StatefulWidget {
  const NavigationBarDefault({super.key});

  @override
  State<NavigationBarDefault> createState() => _NavigationBarDefaultState();
}

late BannerAd myBanner;

class _NavigationBarDefaultState extends State<NavigationBarDefault> {
  @override
  void initState() {
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   GdprDialog.instance
    //       .showDialog(isForTest: true, testDeviceId: 'xxxxxxxxxxxxxxx')
    //       .then((onValue) {
    //         if (kDebugMode) {
    //           print('result === $onValue');
    //         }
    //       });
    // });
    myBanner = BannerAd(
      adUnitId: 'ca-app-pub-1867699726143396/7119748323',
      size: AdSize.banner,
      request: const AdRequest(),
      listener: const BannerAdListener(),
    );
    myBanner.load();
    super.initState();
  }

  List<Widget> screens = [
    const StartAbout(),
    const RandomGame(),
    const LevelGame(),
    const BookGame(),
    const RankingPage(),
    const ChatPage(),
  ];

  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final AdWidget adWidget = AdWidget(ad: myBanner);
    final Container adSizedBox = Container(
      color: Colors.white,
      width: myBanner.size.width.toDouble(),
      height: myBanner.size.height.toDouble(),
      child: adWidget,
    );
    return Scaffold(
      backgroundColor: Theme.of(
        context,
      ).primaryColor, //const Color(0xfff8f5f1),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Theme.of(context).primaryColor,
        child: IconTheme(
          data: const IconThemeData(color: Color(0xFFF8C78F)),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Row(
              children: [
                TabButtonWidget(
                  text: 'Home',
                  onTap: () => setState(() => selectedTabIndex = 0),
                  isDifferentTabIndex: selectedTabIndex != 0,
                ),
                TabButtonWidget(
                  text: 'Random',
                  onTap: () => setState(() => selectedTabIndex = 1),
                  isDifferentTabIndex: selectedTabIndex != 1,
                ),
                TabButtonWidget(
                  text: 'Level',
                  onTap: () => setState(() => selectedTabIndex = 2),
                  isDifferentTabIndex: selectedTabIndex != 2,
                ),
                TabButtonWidget(
                  text: 'Books',
                  onTap: () => setState(() => selectedTabIndex = 3),
                  isDifferentTabIndex: selectedTabIndex != 3,
                ),
                TabButtonWidget(
                  text: 'Ranking',
                  onTap: () => setState(() => selectedTabIndex = 4),
                  isDifferentTabIndex: selectedTabIndex != 4,
                ),
                 TabButtonWidget(
                  text: 'Chat',
                  onTap: () => setState(() => selectedTabIndex = 5),
                  isDifferentTabIndex: selectedTabIndex != 5,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(child: screens[selectedTabIndex]),
          SizedBox(
            child: SizedBox(
              height: 50,
              width: double.infinity,
              child: adSizedBox,
            ),
          ),
        ],
      ),
    );
  }
}

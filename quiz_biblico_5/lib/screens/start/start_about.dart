import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:quiz_biblico_5/provider/theme_changer.dart';
import 'package:quiz_biblico_5/screens/profile/profile_page.dart';
import 'package:quiz_biblico_5/screens/start/widgets/about_rules.dart';
import 'package:quiz_biblico_5/shared/app_bar_default/app_bar_default.dart';
import 'package:quiz_biblico_5/utils/preferences_manager.dart';

import 'package:quiz_biblico_5/widgets/popup_menu_button_about_widget.dart';

class StartAbout extends StatefulWidget {
  const StartAbout({super.key});

  @override
  State<StartAbout> createState() => _StartAboutState();
}

class _StartAboutState extends State<StartAbout> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  void _navigateToProfile(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (_) => const ProfilePage()),
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55.0),
        child: AppBarDefault(
          text: 'title'.tr(),
          actions: [
           StreamBuilder<DocumentSnapshot>(
    stream: FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser?.uid)
        .snapshots(),
    builder: (context, snapshot) {
      // 1. Se não houver usuário ou os dados ainda estiverem carregando
      if (!snapshot.hasData || !snapshot.data!.exists) {
        return IconButton(
          icon: const Icon(Icons.person),
          onPressed: () => _navigateToProfile(context),
        );
      }

      // 2. Pegamos os dados do Firestore
      final data = snapshot.data!.data() as Map<String, dynamic>;
      final String? photoUrl = data['photoUrl'];

      // 3. Se não tiver foto salva, exibe o ícone padrão
      if (photoUrl == null || photoUrl.isEmpty) {
        return IconButton(
          icon: const Icon(Icons.person),
          onPressed: () => _navigateToProfile(context),
        );
      }

      // 4. Se tiver foto, exibe o Avatar (Asset ou Network)
      bool isAsset = photoUrl.startsWith('assets/');

      return IconButton(
        onPressed: () => _navigateToProfile(context),
        icon: CircleAvatar(
          radius: 14, // Tamanho ideal para dentro do AppBar
          backgroundImage: isAsset 
              ? AssetImage(photoUrl) as ImageProvider
              : NetworkImage(photoUrl),
        ),
      );
    },
  ),
            PopupMenuButtonAboutWidget(),
          ],
          leading: IconButton(
            icon:
                Provider.of<ThemeChanger>(context).themeType ==
                        AppTheme.light ||
                    Provider.of<ThemeChanger>(context).themeType ==
                        AppTheme.sepia
                ? Image.asset(
                    'images/settings-black.gif',
                    width: 30,
                    height: 30,
                  )
                : Image.asset(
                    'images/settings-white.gif',
                    width: 30,
                    height: 30,
                  ),
            onPressed: () => _scaffoldKey.currentState?.openDrawer(),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey.shade100, //Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color:
                    Provider.of<ThemeChanger>(context).themeType ==
                        AppTheme.light
                    ? Colors.amber.shade100
                    : Provider.of<ThemeChanger>(context).themeType ==
                          AppTheme.dark
                    ? Colors.grey.shade300
                    : Provider.of<ThemeChanger>(context).themeType ==
                          AppTheme.sepia
                    ? Colors.green.shade400
                    : Provider.of<ThemeChanger>(context).themeType ==
                          AppTheme.highContrast
                    ? Colors.black
                    : Provider.of<ThemeChanger>(context).themeType ==
                          AppTheme.orangeLight
                    ? Colors.deepOrange.shade400
                    : Provider.of<ThemeChanger>(context).themeType ==
                          AppTheme.system
                    ? Colors.grey
                    : Colors.white24, //Theme.of(context).primaryColor,
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Provider.of<ThemeChanger>(context).themeType ==
                            AppTheme.light
                        ? Image.asset(
                            'images/settings-black.gif',
                            width: 30,
                            height: 30,
                          )
                        : Image.asset(
                            'images/settings-white.gif',
                            width: 30,
                            height: 30,
                          ),
                    AutoSizeText(
                      'settings'.tr(),
                      style: TextStyle(
                        fontSize: 30,
                        color:
                            Provider.of<ThemeChanger>(context).themeType ==
                                AppTheme.light
                            ? Colors.black
                            : Provider.of<ThemeChanger>(context).themeType ==
                                  AppTheme.dark
                            ? Colors.black
                            : Provider.of<ThemeChanger>(context).themeType ==
                                  AppTheme.system
                            ? Colors.white
                            : Provider.of<ThemeChanger>(context).themeType ==
                                  AppTheme.sepia
                            ? Colors.white
                            : Provider.of<ThemeChanger>(context).themeType ==
                                  AppTheme.highContrast
                            ? Colors.white
                            : Provider.of<ThemeChanger>(context).themeType ==
                                  AppTheme.orangeLight
                            ? Colors.white
                            : Colors.white,

                        fontFamily: 'Trocchi',
                      ),
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading:
                  Provider.of<ThemeChanger>(context).themeType == AppTheme.light
                  ? const Icon(Icons.wb_sunny, color: Colors.amber, size: 40)
                  : const Icon(
                      Icons.nightlight_round,
                      color: Colors.grey,
                      size: 40,
                    ),
              title: Text(
                Provider.of<ThemeChanger>(context).themeType == AppTheme.light
                    ? 'lightTheme'.tr()
                    : Provider.of<ThemeChanger>(context).themeType ==
                          AppTheme.dark
                    ? 'darkTheme'.tr()
                    : Provider.of<ThemeChanger>(context).themeType ==
                          AppTheme.sepia
                    ? 'sepiaTheme'.tr()
                    : Provider.of<ThemeChanger>(context).themeType ==
                          AppTheme.highContrast
                    ? 'highContrastTheme'.tr()
                    : Provider.of<ThemeChanger>(context).themeType ==
                          AppTheme.orangeLight
                    ? 'orangeLightTheme'.tr()
                    : Provider.of<ThemeChanger>(context).themeType ==
                          AppTheme.system
                    ? 'systemTheme'.tr()
                    : "",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontFamily: 'Trocchi',
                ),
              ),
              trailing: CupertinoSwitch(
                activeTrackColor: Colors.amber,
                thumbColor: Colors.white,
                inactiveTrackColor: Colors.grey.shade400,
                value:
                    Provider.of<ThemeChanger>(context).themeType ==
                    AppTheme.light,
                onChanged: (value) {
                  final newTheme = value ? AppTheme.light : AppTheme.dark;
                  Provider.of<ThemeChanger>(
                    context,
                    listen: false,
                  ).setTheme(newTheme);
                },
              ),
            ),
            ListTile(
              leading: PreferencesManager.instance.isDirectQuestionMode
                  ? const Icon(Icons.list_alt, color: Colors.blue, size: 40)
                  : const Icon(
                      Icons.check_circle_outline,
                      color: Colors.green,
                      size: 40,
                    ),
              title: Text(
                PreferencesManager.instance.isDirectQuestionMode
                    ? 'choiceQuestion'.tr()
                    : 'directQuestion'.tr(),
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontFamily: 'Trocchi',
                ),
              ),
              trailing: CupertinoSwitch(
                activeTrackColor: Colors.blue,
                thumbColor: Colors.white,
                inactiveTrackColor: Colors.green,
                value: PreferencesManager.instance.isDirectQuestionMode,
                onChanged: (bool value) {
                  setState(() {
                    PreferencesManager.instance.isDirectQuestionMode = value;
                  });
                },
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.color_lens,
                color: Colors.black,
                size: 40,
              ),
              title: Text(
                'theme'.tr(),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontFamily: 'Trocchi',
                ),
                maxLines: 1,
              ),
              onTap: () {
                Navigator.pop(context); // fecha o Drawer
                showDialog(
                  context: context,
                  builder: (context) => const ThemeDialog(),
                );
              },
            ),
            // ListTile(
            //   leading: const Icon(
            //     Icons.language,
            //     color: Colors.black,
            //     size: 40,
            //   ),
            //   title: Text(
            //     'language'.tr(), // chave para exibir "Idioma" ou "Language"
            //     style: const TextStyle(
            //       fontSize: 20,
            //       color: Colors.black,
            //       fontFamily: 'Trocchi',
            //     ),
            //     maxLines: 1,
            //   ),
            //   onTap: () {
            //     Navigator.pop(context); // fecha o Drawer
            //     showDialog(
            //       context: context,
            //       builder: (context) => const LanguageDialog(),
            //     );
            //     setState(() {

            //     });
            //   },
            // ),
          ],
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return Stack(
            alignment: const Alignment(1.0, -1.0),
            children: [
              Column(
                children: <Widget>[
                  Container(
                    height: viewportConstraints.maxHeight,
                    width: viewportConstraints.maxWidth,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        colors: [
                          Theme.of(context).secondaryHeaderColor,
                          Theme.of(context).primaryColor,
                          Theme.of(context).secondaryHeaderColor,
                        ],
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight: viewportConstraints.maxHeight,
                        ),
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SizedBox(height: 7.0),
                              Image.asset('images/bible.png', height: 100),
                              const SizedBox(height: 3),
                              Text(
                                'gameInstructions'.tr(),
                                style: Theme.of(
                                  context,
                                ).textTheme.headlineMedium,
                              ),
                              const SizedBox(height: 3),
                              const AboutRules(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Image.asset(
                'images/bookmark.png',
                height: viewportConstraints.maxHeight * 0.270,
              ),
            ],
          );
        },
      ),
    );
  }
}

class LanguageDialog extends StatelessWidget {
  const LanguageDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final currentLocale = context.locale;

    Widget langButton(Locale locale, String label) {
      final isSelected = currentLocale == locale;
      return ElevatedButton.icon(
        icon: Icon(
          isSelected ? Icons.check_circle : Icons.circle_outlined,
          color: isSelected ? Colors.green : null,
        ),
        label: Text(
          label,
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(color: Colors.black),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected
              ? Colors.grey.shade100
              : Colors.grey.shade300,
        ),
        onPressed: () {
          context.setLocale(locale);
          Navigator.pop(context); // fecha o dialog
        },
      );
    }

    return AlertDialog(
      backgroundColor: Colors.white,
      title: Text(
        'chooseLanguage'.tr(), // adicione essa chave no JSON
        style: Theme.of(
          context,
        ).textTheme.bodyMedium?.copyWith(color: Colors.black),
      ),
      content: SingleChildScrollView(
        child: Column(
          children: [
            langButton(const Locale('en', 'US'), 'English'),
            langButton(const Locale('pt', 'BR'), 'Português'),
          ],
        ),
      ),
      actions: [
        TextButton(
          child: Text(
            'close'.tr(),
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: Colors.black),
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );
  }
}

class ThemeDialog extends StatelessWidget {
  const ThemeDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    final currentTheme = themeChanger.themeType;

    Widget themeButton(AppTheme theme, String label) {
      final isSelected = currentTheme == theme;
      return ElevatedButton.icon(
        icon: Icon(
          isSelected ? Icons.check_circle : Icons.circle_outlined,
          color: isSelected ? Colors.green : null,
        ),
        label: Text(
          label,
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(color: Colors.black),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected
              ? Colors.grey.shade100
              : Colors.grey.shade300,
        ),
        onPressed: () {
          themeChanger.setTheme(theme);
          Navigator.pop(context); // fecha o dialog
        },
      );
    }

    return AlertDialog(
      backgroundColor: Colors.white,
      title: Text(
        'chooseAtheme'.tr(),
        style: Theme.of(
          context,
        ).textTheme.bodyMedium?.copyWith(color: Colors.black),
      ),
      content: SingleChildScrollView(
        child: Column(
          children: [
            themeButton(AppTheme.system, 'system'.tr()),
            themeButton(AppTheme.light, 'lightColor'.tr()),
            themeButton(AppTheme.dark, 'darkColor'.tr()),
            themeButton(AppTheme.sepia, 'sepiaColor'.tr()),
            themeButton(AppTheme.highContrast, 'highContrast'.tr()),
            themeButton(AppTheme.orangeLight, 'orangeLight'.tr()),
          ],
        ),
      ),
      actions: [
        TextButton(
          child: Text(
            'close'.tr(),
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: Colors.black),
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );
  }
}

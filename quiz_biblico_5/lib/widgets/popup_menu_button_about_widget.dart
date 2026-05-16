import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:quiz_biblico_5/widgets/dialog_widget.dart';
import 'package:share_plus/share_plus.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class PopupMenuButtonAboutWidget extends StatefulWidget {
  const PopupMenuButtonAboutWidget({super.key});

  @override
  State<PopupMenuButtonAboutWidget> createState() =>
      _PopupMenuButtonAboutWidgetState();
}

class _PopupMenuButtonAboutWidgetState
    extends State<PopupMenuButtonAboutWidget> {
  Future<void> _launcherLink(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrlString(url);
    } else {
      debugPrint('Não pode executar o link $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      offset: const Offset(0, 46),
      icon: Image.asset('images/heart.gif'),
      color: Colors.amber.shade100,
      elevation: 5,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      onSelected:
          (value) async => await showDialog(
            barrierColor: Colors.transparent,
            context: context,
            builder:
                (_) => QBDialog(
                  content: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: SizedBox(
                      width: 330,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'donationsTitle'.tr(),
                            style: Theme.of(
                              context,
                            ).textTheme.displaySmall!.copyWith(
                              color: Colors.black,
                              fontSize: 19,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Quicksand',
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'donationsSubtitle1'.tr(),
                            style: Theme.of(
                              context,
                            ).textTheme.headlineMedium!.copyWith(
                              color: Colors.black,
                              fontSize: 19,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Quicksand',
                            ),
                          ),
                          Text(
                            'donationsSubtitle2'.tr(),
                            style: Theme.of(
                              context,
                            ).textTheme.bodyMedium!.copyWith(
                              color: Colors.black,
                              fontSize: 19,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Quicksand',
                            ),
                          ),
                          Text(
                            'donationsSubtitle3'.tr(),
                            style: Theme.of(
                              context,
                            ).textTheme.bodyMedium!.copyWith(
                              color: Colors.black,
                              fontSize: 19,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Quicksand',
                            ),
                          ),
                          Text(
                            'donationsSubtitle4'.tr(),
                            style: Theme.of(
                              context,
                            ).textTheme.bodyMedium!.copyWith(
                              color: Colors.black,
                              fontSize: 19,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Quicksand',
                            ),
                          ),
                          Text(
                            'donationsSubtitle5'.tr(),
                            style: Theme.of(
                              context,
                            ).textTheme.bodyMedium!.copyWith(
                              color: Colors.black,
                              fontSize: 19,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Quicksand',
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'donationsContacts'.tr(),
                            style: Theme.of(
                              context,
                            ).textTheme.headlineMedium!.copyWith(
                              color: Colors.black,
                              fontSize: 19,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Quicksand',
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'donationsSubtitle6'.tr(),
                            style: Theme.of(
                              context,
                            ).textTheme.headlineMedium!.copyWith(
                              color: Colors.black,
                              fontSize: 19,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Quicksand',
                            ),
                          ),
                          Text(
                            'donationsSubtitle7'.tr(),
                            style: Theme.of(
                              context,
                            ).textTheme.headlineMedium!.copyWith(
                              color: Colors.black,
                              fontSize: 19,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Quicksand',
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextButton(
                            style: ButtonStyle(
                              shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                              overlayColor: WidgetStateProperty.all<Color>(
                                Colors.amber.shade50,
                              ),
                            ),
                            onPressed:
                                () => shareQB(
                                  'https://play.google.com/store/apps/details?id=br.com.dev.quizbiblico',
                                ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'shareBibleQuiz'.tr(),
                                    style: Theme.of(
                                      context,
                                    ).textTheme.headlineMedium!.copyWith(
                                      color: Colors.black,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Quicksand',
                                    ),
                                  ),
                                  const Icon(Icons.share, color: Colors.red),
                                ],
                              ),
                            ),
                          ),
                          TextButton(
                            style: ButtonStyle(
                              shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                              overlayColor: WidgetStateProperty.all<Color>(
                                Colors.amber.shade50,
                              ),
                            ),
                            onPressed:
                                () => _launcherLink(
                                  'https://play.google.com/store/apps/details?id=br.com.dev.quizbiblico',
                                ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'rateBibleQuiz'.tr(),
                                    style: Theme.of(
                                      context,
                                    ).textTheme.headlineMedium!.copyWith(
                                      color: Colors.black,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Quicksand',
                                    ),
                                  ),
                                  const SizedBox(width: 5.0),
                                  const Icon(Icons.chat, color: Colors.red),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
          ), // only one option, so opens the same thing always
      itemBuilder: (context) {
        return [
          PopupMenuItem(
            value: 0,
            height: 28,
            padding: EdgeInsets.zero,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              child: FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('images/heart.gif', height: 30, width: 30),
                    const SizedBox(width: 8),
                    Text(
                      'donations'.tr(),
                      style: Theme.of(
                        context,
                      ).textTheme.headlineMedium!.copyWith(
                        color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Quicksand',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ];
      },
    );
  }

  void shareQB(String link) {
    Share.share(
      "Instale App Incrível Jogo Sobre a Palavra de Deus. Para Você!!!! $link",
    );
  }
}

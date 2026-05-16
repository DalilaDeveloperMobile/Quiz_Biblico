import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:quiz_biblico_5/data/mock_game_data.dart';
import 'package:quiz_biblico_5/shared/app_bar_default/app_bar_default.dart';
import 'package:quiz_biblico_5/shared/button_book_default/button_book_default.dart';

class BookGame extends StatefulWidget {
  const BookGame({super.key});

  @override
  State<BookGame> createState() => _BookGameState();
}

class _BookGameState extends State<BookGame> {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(55.0),
          child: AppBarDefault(
            text: 'chooseABook'.tr(),
          ),
        ),
        body: LayoutBuilder(builder: (ctx, constraints) {
          return Container(
            width: MediaQuery.of(context).size.width,
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
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: mockGameData.nameBook.entries.map((nameBooks) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: ButtonBookDefault(
                    nameBooks: nameBooks,
                  ),
                );
              }).toList(),
            ),
          );
        }),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quiz_biblico_5/models/variables_game_model.dart';
import 'package:quiz_biblico_5/utils/routes_books.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ItemsNumberBooks extends StatefulWidget {
  const ItemsNumberBooks({
    super.key,
    this.books,
    required this.nameBook,
  });

  final VariablesGameModel? books;
  final String nameBook;

  @override
  State<ItemsNumberBooks> createState() => _ItemsNumberBooksState();
}

class _ItemsNumberBooksState extends State<ItemsNumberBooks> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> _initIsSelectIcon() async {
    final SharedPreferences prefs = await _prefs;
    bool? isSelectNamber = prefs.getBool(
      'isSelectNamberBooks${widget.nameBook}-${widget.books!.id}',
    );
    if (isSelectNamber != null) {
      setState(() {
        widget.books!.isSelectNamber = isSelectNamber;
      });
    }
  }

  Future<void> _toggleIsSelectIcon() async {
    final SharedPreferences prefs = await _prefs;
    bool success = await prefs.setBool(
      'isSelectNamberBooks${widget.nameBook}-${widget.books!.id}',
      !widget.books!.isSelectNamber,
    );
    if (success) {
      setState(() {
        widget.books!.isSelectNamber = !widget.books!.isSelectNamber;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _initIsSelectIcon();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {
        Navigator.of(context).pushNamed(
          RoutesBooks().routes['${widget.nameBook}Questions']!, //PERGUNTAS,
          arguments: {
            'books': widget.books,
            'nameBook': widget.nameBook,
          },
        ),
        _toggleIsSelectIcon(),
      },
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: widget.books!.isSelectNamber
            ? const BoxDecoration()
            : BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                gradient: LinearGradient(
                  colors: [
                    Colors.white.withValues(alpha: 0.5),
                    Colors.white,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
        child: Center(
          child: Text(
            widget.books!.id!,
            style: TextStyle(
              fontSize: 26,
              color: widget.books!.isSelectNamber ? Colors.white : Colors.black,
              fontFamily: 'Shrikhand',
            ),
          ),
        ),
      ),
    );
  }
}

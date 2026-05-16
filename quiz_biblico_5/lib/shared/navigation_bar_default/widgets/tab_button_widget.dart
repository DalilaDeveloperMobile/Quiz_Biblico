import 'package:flutter/material.dart';

class TabButtonWidget extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  final bool isDifferentTabIndex;

  const TabButtonWidget({
    super.key,
    required this.onTap,
    required this.text,
    required this.isDifferentTabIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        isDifferentTabIndex
            ? GestureDetector(
                onTap: onTap,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                  ),
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      text,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ),
              )
            : GestureDetector(
                onTap: onTap,
                child: Stack(
                  alignment: const Alignment(0.0, -0.5),
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                      ),
                      child: Image.asset(
                        'images/indexes/indexe.png',
                        height: 47,
                      ),
                    ),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        text,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                  ],
                ),
              ),
      ],
    );
  }
}

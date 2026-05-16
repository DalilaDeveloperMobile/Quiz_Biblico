import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AboutRules extends StatelessWidget {
  const AboutRules({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 26.0,
        right: 26.0,
        bottom: 7.0,
      ),
      child: SizedBox(
        width: 350,
        child: Card(
          color: Colors.black.withValues(alpha: 0.5),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Text(
                  'about'.tr(),
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

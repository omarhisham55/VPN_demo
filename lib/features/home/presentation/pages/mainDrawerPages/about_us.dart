import 'package:flutter/material.dart';
import 'package:vpn_demo/core/components/appbars/home_appbar.dart';
import 'package:vpn_demo/core/components/buttons/rounded_appbar_button.dart';
import 'package:vpn_demo/core/utils/colors.dart';

class AboutUsWidgets {
  static Scaffold aboutUs(BuildContext context) {
    return Scaffold(
      appBar: homeAppbar(
        context: context,
        title: 'About Us',
        action: RoundedAppbarButton(
          icon: const Icon(
            Icons.info_outline,
            color: PrimaryColors.primary500,
          ),
          onTap: () {},
        ),
      ),
    );
  }
}

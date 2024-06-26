import 'package:flutter/material.dart';
import 'package:vpn_demo/config/theme/theme_manager.dart';
import 'package:vpn_demo/core/components/text/text_controller.dart';
import 'package:vpn_demo/core/utils/colors.dart';

class OrDivider extends StatelessWidget {
  final String text;
  const OrDivider({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: TextGlobal(
            text,
            style: TextSizeState.bodyMedium,
            color: ThemeController.isDarkTheme ? NeutralColors.grey900 : null,
          ),
        ),
        const Expanded(child: Divider()),
      ],
    );
  }
}

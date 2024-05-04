import 'package:flutter/material.dart';
import 'package:vpn_demo/core/utils/colors.dart';
import 'package:vpn_demo/core/utils/strings.dart';

class ChangeLocationButton extends StatelessWidget {
  final Function() onTap;
  const ChangeLocationButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MaterialButton(
          onPressed: onTap,
          shape: OutlineInputBorder(
            borderSide: const BorderSide(color: PrimaryColors.primary500),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              Text(
                MainStrings.changeLocation,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: PrimaryColors.primary500,
                    fontWeight: FontWeight.w500),
              ),
              const Icon(
                Icons.arrow_drop_up,
                color: PrimaryColors.primary500,
                size: 30,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

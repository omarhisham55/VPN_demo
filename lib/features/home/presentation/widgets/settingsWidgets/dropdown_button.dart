import 'package:flutter/material.dart';
import 'package:vpn_demo/core/utils/colors.dart';

class DropDownSetting<String> extends StatefulWidget {
  final List<String> items;
  const DropDownSetting({
    super.key,
    required this.items,
  });

  @override
  State<DropDownSetting<String>> createState() =>
      _DropDownSettingState<String>();
}

class _DropDownSettingState<String> extends State<DropDownSetting<String>> {
  late String selectedValue = widget.items[0];
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      elevation: 8,
      underline: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: NeutralColors.grey700),
        ),
      ),
      dropdownColor: NeutralColors.white,
      padding: const EdgeInsets.symmetric(vertical: 10),
      value: selectedValue,
      items: widget.items
          .map((item) => DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item.toString(),
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ))
          .toList(),
      onChanged: (value) {
        setState(() {
          selectedValue = value ?? '' as String;
          debugPrint('value: $value');
          debugPrint('selectedValue: $selectedValue');
        });
      },
    );
  }
}

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

String? selectedValue;

class DropDownButton extends StatelessWidget {
  final List<String> items;
  final String? selectedValueText;
  final Function(String?)? onSelected;
  const DropDownButton(
      {super.key,
      required this.items,
      this.selectedValueText,
      this.onSelected});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          isExpanded: true,
          hint: Text(
            selectedValueText!,
            style: TextStyle(
              fontSize: 14,
              color: Theme.of(context).hintColor,
            ),
          ),
          items: items
              .map((String item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ))
              .toList(),
          value: selectedValue,
          onChanged: (String? value) {
            onSelected!(value);
          },
          buttonStyleData: const ButtonStyleData(
            padding: EdgeInsets.symmetric(horizontal: 16),
            height: 40,
            width: 140,
          ),
          menuItemStyleData: const MenuItemStyleData(
            height: 40,
          ),
        ),
      ),
    );
  }
}

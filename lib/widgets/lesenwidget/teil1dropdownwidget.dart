import 'package:flutter/material.dart';

class Teil1DropDown extends StatefulWidget {
  final List<String> items;
  final String hintText;
  final Function(String?)? onChanged;

  const Teil1DropDown({super.key, 
    required this.items,
    required this.hintText,
    this.onChanged,
  });

  @override
  // ignore: library_private_types_in_public_api
  _Teil1DropDownState createState() => _Teil1DropDownState();
}

class _Teil1DropDownState extends State<Teil1DropDown> {
  String? _selectedItem;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedItem,
      hint: Text(widget.hintText),
      isExpanded: false,
      items: widget.items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          _selectedItem = newValue;
        });
        if (widget.onChanged != null) {
          widget.onChanged!(newValue);
        }
      },
    );
  }
}

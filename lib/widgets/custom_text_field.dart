import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hint, this.maxLines = 1, this.onSaved});

  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      maxLines: maxLines,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'field is requird';
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: hint,
      ),
    );
  }
}

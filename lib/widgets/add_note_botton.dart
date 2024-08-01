import 'package:flutter/material.dart';
import 'package:noteapp/widgets/add_custom_botton.dart';
import 'package:noteapp/widgets/custom_text_field.dart';

class AddNoteButton extends StatelessWidget {
  const AddNoteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            CustomTextField(
              hint: 'Title',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: 'Content',
              maxLines: 5,
            ),
            SizedBox(
              height: 38,
            ),
            CustomBotton(),
            SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}

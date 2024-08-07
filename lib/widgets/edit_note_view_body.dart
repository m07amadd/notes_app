import 'package:flutter/material.dart';
import 'package:noteapp/widgets/custom_text_field.dart';
import 'package:noteapp/widgets/custum_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 65,
            ),
            CustomAppBar(
              title: 'Edit',
              icon: Icons.check,
            ),
            SizedBox(
              height: 65,
            ),
            CustomTextField(hint: 'title'),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: 'content',
              maxLines: 5,
            )
          ],
        ));
  }
}

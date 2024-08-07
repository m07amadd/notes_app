import 'package:flutter/material.dart';
import 'package:noteapp/widgets/custum_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 65,
            ),
            Container(
              child: CustomAppBar(
                title: 'Edit',
                icon: Icons.check,
              ),
            )
          ],
        ));
  }
}

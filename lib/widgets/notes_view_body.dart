import 'package:flutter/material.dart';
import 'package:noteapp/widgets/custum_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: const Column(
        children: [
          SizedBox(
            height: 65,
          ),
          CustomAppBar(),
        ],
      ),
    );
  }
}

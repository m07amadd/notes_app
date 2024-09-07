import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:noteapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:noteapp/cubits/add_note_cubit/add_note_state.dart';
import 'package:noteapp/widgets/add_custom_botton.dart';
import 'package:noteapp/widgets/add_note_form.dart';
import 'package:noteapp/widgets/custom_text_field.dart';

class AddNoteButton extends StatelessWidget {
  const AddNoteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: BlocConsumer<NotesCubit, NotesState>(
          listener: (context, state) {
            if (state is NotesFailure) {
              print('feiled: ${state.errMessage}');
            }

            if (state is NotesSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: state is NotesLoading ? true : false,
                child: AddNoteForm());
          },
        ),
      ),
    );
  }
}

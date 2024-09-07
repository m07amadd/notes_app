import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:noteapp/constent.dart';
import 'package:noteapp/models/note_model.dart';
import 'add_note_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  addNote(NoteModel note) async {
    emit(NotesLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      emit(NotesSuccess());
      await notesBox.add(note);
    } catch (e) {
      NotesFailure(errMessage: e.toString());
    }
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'add_note_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
}
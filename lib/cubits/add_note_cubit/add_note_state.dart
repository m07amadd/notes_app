import 'package:flutter/widgets.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}

class AddNotesLoading extends NotesState {}

class AddNotesSuccess extends NotesState {}

class AddNotesFailure extends NotesState {
  final String errMessage;

  AddNotesFailure({required this.errMessage});
}

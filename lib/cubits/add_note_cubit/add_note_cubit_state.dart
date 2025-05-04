part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteCubitState {}

final class AddNoteInitialState extends AddNoteCubitState {}

final class AddNoteLoadingState extends AddNoteCubitState {}

final class AddNoteSuccessState extends AddNoteCubitState {}

final class AddNoteFailureState extends AddNoteCubitState {
  final String errorMessage;

  AddNoteFailureState({required this.errorMessage});

}

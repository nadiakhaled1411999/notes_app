import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubit() : super(AddNoteInitialState());
}

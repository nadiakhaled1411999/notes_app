import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubit() : super(AddNoteInitialState());

   addNote(NoteModel note)async {
    emit(AddNoteLoadingState());
try{
var notesBox= Hive.box<NoteModel>(kNotesBox);
emit( AddNoteSuccessState());
await notesBox.add( note);
}catch(e){
emit( AddNoteFailureState(errorMessage: e.toString()));
}
  }
}

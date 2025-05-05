import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitialState());
  fetchAllNotes() {
emit(NotesLoadingState());
try{
var notesBox= Hive.box<NoteModel>(kNotesBox);

emit(NotesSuccessState(notes:notesBox.values.toList()));

}catch(e){
emit( NotesFailureState(errorMessage: e.toString()));
}
  }
}

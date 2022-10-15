import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'form_event.dart';
part 'form_state.dart';

class FormBloc extends Bloc<FormEvent, FormStatee> {
  FormBloc() : super(FormInitialState()) {
    on<FormTextChangedEvent>((event, emit) {
  if (event.titlevalue == '' &&
          event.locationvalue == '' &&
          event.descriptionvalue == '' &&
          event.datevalue == '') //Form details event
      {
        emit(FormErrorState(error: 'Please add all details'));
      } else {
        emit(FormValidState());
      }



    
    });


on<FormSubmittedEvent>((event, emit) {
    emit(FormLoadingState());




});



  }
}

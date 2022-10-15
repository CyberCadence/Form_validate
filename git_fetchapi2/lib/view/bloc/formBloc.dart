import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git_fetchapi2/view/bloc/formevent.dart';
import 'package:git_fetchapi2/view/bloc/formstate.dart';

class FormBloc extends Bloc<FormEvent,FormState>{



  FormBloc():super(FormInitialState()){


on<FormTextChangedEvent>((event, emit) {

if(event.titlevalue==''&& event.locationvalue==''&& event.descriptionvalue==''&&event.datevalue=='')         //Form details event 
{

emit(FormErrorState(Error: 'Please add all details'));

}else{



emit(FormValidState());

}





});


on<FormSubmittedEvent>((event, emit) {

emit(FormLoadingState());

});

  }


 









}
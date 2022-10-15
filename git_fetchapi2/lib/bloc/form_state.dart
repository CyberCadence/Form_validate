part of 'form_bloc.dart';

 


class FormStatee{}



class FormInitialState extends FormStatee{}

class FormInvalidState extends FormStatee{}
class FormValidState extends FormStatee{}
class FormErrorState extends FormStatee {
final String error;
  FormErrorState({
    required this.error,
  });

}



class FormLoadingState extends FormStatee{}




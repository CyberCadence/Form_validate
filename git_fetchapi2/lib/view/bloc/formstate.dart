// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract      class FormState{}



class FormInitialState extends FormState{}

class FormInvalidState extends FormState{}
class FormValidState extends FormState{}
class FormErrorState extends FormState {
final String Error;
  FormErrorState({
    required this.Error,
  });

}



class FormLoadingState extends FormState{}
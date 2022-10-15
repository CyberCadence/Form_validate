// ignore_for_file: public_member_api_docs, sort_constructors_first
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


class FormSubmittedState extends FormStatee{}


class DBcreateState extends FormStatee{}

class DBcreateErrorState extends FormStatee {
final String message;
  DBcreateErrorState({
    required this.message,
  });

}
class PageRouteState extends FormStatee{}

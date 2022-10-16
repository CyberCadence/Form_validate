// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'form_bloc.dart';

abstract class FormEvent {}


class FormTextChangedEvent extends FormEvent {



final String titlevalue;
final String descriptionvalue;
final String locationvalue;
final String datevalue;
  FormTextChangedEvent({
    required this.titlevalue,
    required this.descriptionvalue,
    required this.locationvalue,
    required this.datevalue,
  });



}
class FormSubmittedEvent extends FormEvent {

final String title;
final String description;
final String location;
final String date;
  FormSubmittedEvent({
    required this.title,
    required this.description,
    required this.location,
    required this.date,
  });
}
 



 
class PageRouteEvent extends FormEvent{}
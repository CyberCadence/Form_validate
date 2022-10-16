import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git_fetchapi2/Services/db.dart';
import 'package:git_fetchapi2/model/modeldata.dart';
import 'package:git_fetchapi2/view/ListTickets.dart';
import 'package:meta/meta.dart';

part 'form_event.dart';
part 'form_state.dart';

class FormBloc extends Bloc<FormEvent, FormStatee> {
  FormBloc() : super(FormInitialState()) {
    on<FormTextChangedEvent>((event, emit) {
      if (event.datevalue == '' ||
          event.locationvalue == '' ||
          event.descriptionvalue == '' ||
          event.titlevalue == '') //Form details event
      {
        emit(FormErrorState(error: 'Please add all details'));
      } else {
        emit(FormValidState());
      }
    });

    on<FormSubmittedEvent>((event, emit) async {
      emit(FormLoadingState());

//newpage state

      await Future.delayed(const Duration(seconds: 5));

      emit(DBcreateState());
      try {
        FireStore().addData(FormModel(
            title: event.title,
            description: event.description,
            location: event.location,
            date: event.date));
      } catch (e) {
        emit(DBcreateErrorState(message: e.toString()));
      }
    });
  }
}

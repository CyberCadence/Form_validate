import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git_fetchapi2/bloc/form_bloc.dart';
import 'package:git_fetchapi2/view/homepage.dart';

void main() {
  runApp(  BlocProvider(
    create: (context) => FormBloc(),
    child: MyApp(),
  ));
}
 
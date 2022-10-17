import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git_fetchapi2/Services/notificationsServices.dart';
import 'package:git_fetchapi2/bloc/form_bloc.dart';
import 'package:git_fetchapi2/view/homepage.dart';

void main()async {

 WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();
await NotificationServices.initialize();
  runApp(  BlocProvider(
    create: (context) => FormBloc(),
    child:   MaterialApp(home: MyApp()),
  ));
}
 
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git_fetchapi2/bloc/form_bloc.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController titletextEditingController = TextEditingController();
  TextEditingController descriptiontextEditingController =
      TextEditingController();

  TextEditingController locationtextEditingController = TextEditingController();

  TextEditingController datetextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(' RAISE TICKETS'),
          ),
          body: SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextField(onChanged: (value) {
                  BlocProvider.of<FormBloc>(context).add(FormTextChangedEvent(titlevalue: titletextEditingController.text,
                   descriptionvalue: descriptiontextEditingController.text, locationvalue: locationtextEditingController.text,
                    datevalue: datetextEditingController.text));
                },
                  controller: titletextEditingController,
                  decoration: InputDecoration(
                    hintText: 'Title',
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 1, color: Colors.greenAccent),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(onChanged: (value) =>  BlocProvider.of<FormBloc>(context).add(FormTextChangedEvent(titlevalue: titletextEditingController.text,
                   descriptionvalue: descriptiontextEditingController.text, locationvalue: locationtextEditingController.text,
                    datevalue: datetextEditingController.text)),
                  decoration: InputDecoration(
                    hintText: 'Details',
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 1, color: Colors.greenAccent),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  controller: descriptiontextEditingController,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(onChanged: (value) =>  BlocProvider.of<FormBloc>(context).add(FormTextChangedEvent(titlevalue: titletextEditingController.text,
                   descriptionvalue: descriptiontextEditingController.text, locationvalue: locationtextEditingController.text,
                    datevalue: datetextEditingController.text)),
                  controller: locationtextEditingController,
                  decoration: InputDecoration(
                    hintText: 'Location',
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 1, color: Colors.greenAccent),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: datetextEditingController,onChanged: (value) =>  BlocProvider.of<FormBloc>(context).add(FormTextChangedEvent(titlevalue: titletextEditingController.text,
                   descriptionvalue: descriptiontextEditingController.text, locationvalue: locationtextEditingController.text,
                    datevalue: datetextEditingController.text)),
                  decoration: InputDecoration(
                    hintText: 'Date',
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 1, color: Colors.greenAccent),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                BlocBuilder<FormBloc, FormStatee>(
                  builder: (context, state) {
                    if (state is FormErrorState) {
                      return Center(child: Text(state.error));
                    } else {
                      return Container();
                    }
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                BlocBuilder<FormBloc, FormStatee>(
                  builder: (context, state) {

if(state is FormLoadingState){

  return const Center(child: CircularProgressIndicator(),);
}
                    
                    return MaterialButton(color: (state is FormValidState)?Colors.blue:Colors.grey,
                        onPressed: () {
                           BlocProvider.of<FormBloc>(context).add( FormSubmittedEvent(title: titletextEditingController.text,
                            description: descriptiontextEditingController.text, location: locationtextEditingController.text,
                             date: datetextEditingController.text));
                        }, child: const Text('Submit'));
                  },
                )
              ],
            ),
          ))),
    );
  }
}

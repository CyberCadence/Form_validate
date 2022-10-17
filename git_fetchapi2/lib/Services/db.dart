 
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:git_fetchapi2/model/modeldata.dart';

class FireStore {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;



// add tickets
  Future addData(FormModel formModel) async {
    firebaseFirestore
        .collection('Tickets')
        .add(formModel.toMap())
        .then((value) => print(value));
  }
 



// getallTickets
Stream<List<FormModel>> getAllTickets() {
    return FirebaseFirestore.instance.collection('Tickets').snapshots().map((snapshot) =>

snapshot.docs.map((doc) {

final data=doc.data();
return FormModel.fromMap(data);

}).toList()

    );
        

}

}

// uploadImage
class StorageService{






Future uploadImage(String filepath)async{

  FirebaseStorage storage= FirebaseStorage.instance;

  final ref= storage.ref(DateTime.now().toString());  

      









}

 


}




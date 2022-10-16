import 'package:firebase_core/firebase_core.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:git_fetchapi2/model/modeldata.dart';

class FireStore {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  Future addData(FormModel formModel) async {
    firebaseFirestore
        .collection('Tickets')
        .add(formModel.toMap())
        .then((value) => print(value));
  }
 


Stream<List<FormModel>> getProducts() {
    return FirebaseFirestore.instance.collection('Tickets').snapshots().map((snapshot) =>

snapshot.docs.map((doc) {

final data=doc.data();
return FormModel.fromMap(data);

}).toList()

    );
        

}


}


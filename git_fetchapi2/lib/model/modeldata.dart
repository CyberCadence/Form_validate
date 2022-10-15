// ignore_for_file: public_member_api_docs, sort_constructors_first
class FormModel {

final String title;
final String description;
final String location;
final String date;
  FormModel({
    required this.title,
    required this.description,
    required this.location,
    required this.date,
  });
Map<String,dynamic>toMap(){

return {
'title':title,
'description':description,
'location':location,
'date':date


};


}


FormModel.fromMap(Map<String, dynamic> map)
      : title = map['title'],
        description = map['description'],
        location = map['location'],
        date = map['date'];

}

 
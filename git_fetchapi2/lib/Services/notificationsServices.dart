import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
  
  
  
  
Future<  void> backgroundHandler(RemoteMessage message)async{
print('message recerived ${message.notification!.title}');

}



class NotificationServices{

static Future<void>initialize()async{


NotificationSettings settings= await FirebaseMessaging.
instance.requestPermission(
  alert: true,sound: true
);


if(settings.authorizationStatus==AuthorizationStatus.authorized){

print('Notifications Initialized');

FirebaseMessaging.onBackgroundMessage(backgroundHandler); // for background
FirebaseMessaging.onMessage.listen((message) { 
print('message recerived ${message.notification!.title}');

});



}

}}
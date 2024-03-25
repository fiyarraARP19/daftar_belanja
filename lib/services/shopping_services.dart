import 'dart:ffi';
import 'dart:js_interop';
import 'package:firebase_database/firebase_database.dart';

class ShoppingServices{
  final DatabaseReference _database=
      FirebaseDatabase.instance.ref().child('shopping_list');

  Stream<Map<String, String>> getShoppingList(){
    return _database.onValue.map((event) {
      final Map<String, String> items ={};
      DataSnapshot snapshot = event.snapshot;
      if(snapshot.value ! = null){
        Map<dynamic, dynamic> value = snapshot.value as Map<dynamic, dynamic>;
        values,ForEach((key, value){
          item[key]= value['name'] as String;
        });
      }
      return items;
    });
  }
  void addShoppingItem (String itemName){
    _database.push
  }
}
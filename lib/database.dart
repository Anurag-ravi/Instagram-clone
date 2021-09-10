import 'package:cloud_firestore/cloud_firestore.dart';

class Database {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
    initialise(){
      firestore = FirebaseFirestore.instance;
    }
    Future<List> read() async {
      QuerySnapshot querySnapshot;
      List docs =[];
      try{
        querySnapshot = await firestore.collection('user').get();
        if(querySnapshot.docs.isNotEmpty){
          for(var doc in querySnapshot.docs.toList()){
            Map a = {
              "id": doc.id,
              "name": doc['name'],
              // "caption": doc.get('caption'),
              // "likes":doc.get('likes'),
              // "comments":doc.get('comments'),
              // "postuser":doc.get('postuser'),
              // "time":doc.get('time'),
            };
            docs.add(a);
          }
          return docs;
        }
      } catch (e) {
        print(e);
      }
      return docs;
    }
}
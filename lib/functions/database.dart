import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

Firestore dbRef = Firestore.instance;


class LoanDB{
CollectionReference loanDB = dbRef.collection('loans');

Future<Map> getLoan({@required String id}) async{
var loanDoc = await loanDB.document(id).get().then((f)=> f.data);
return loanDoc;
}

}


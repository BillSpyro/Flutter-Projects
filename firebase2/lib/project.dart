import 'package:cloud_firestore/cloud_firestore.dart';

class Project {
  String _name;
  num _id;
  DocumentReference reference;
  Project.fromMap(Map<String, dynamic> map, {this.reference})
      : _name = map['name'],
        _id = map['listID'];

  Project.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data(), reference: snapshot.reference);

  Map toJson(){
    return {
      'name': _name,
      'id': _id,
    };
  }

  String get name => _name;

  set name(String value) {
    _name = value;
    reference.update(toJson());
  }

  num get id => _id;

  set id(num value) {
    _id = value;
    reference.update(toJson());
  }

}


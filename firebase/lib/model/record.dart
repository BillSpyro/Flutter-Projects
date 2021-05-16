import 'package:cloud_firestore/cloud_firestore.dart';

class Record {
  String _name;
  int _votes;
  DocumentReference reference;
  Record.fromMap(Map<String, dynamic> map, {this.reference})
    : _name = map['name'],
      _votes = map['votes'];

  Record.fromSnapshot(DocumentSnapshot snapshot)
    : this.fromMap(snapshot.data(), reference: snapshot.reference);

  Map toJson(){
    return {
      'name': _name,
      'votes': _votes,
    };
  }

  String get name => _name;

  set name(String value) {
    _name = value;
    reference.update(toJson());
  }

  int get votes => _votes;

  set votes(int value) {
    _votes = value;
    reference.update(toJson());
  }

}


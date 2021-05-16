import 'package:cloud_firestore/cloud_firestore.dart';

class Item {
  String _name;
  bool _crossed;
  num _id;
  DocumentReference reference;
  Item.fromMap(Map<String, dynamic> map, {this.reference})
      : _name = map['name'],
        _crossed = map['crossed'],
        _id = map['listID'];

  Item.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data(), reference: snapshot.reference);

  Map toJson(){
    return {
      'name': _name,
      'crossed': _crossed,
      'id': _id,
    };
  }

  String get name => _name;

  set name(String value) {
    _name = value;
    reference.update(toJson());
  }

  bool get crossed => _crossed;

  set crossed(bool value) {
    _crossed = value;
    reference.update(toJson());
  }

  num get id => _id;

  set id(num value) {
    _id = value;
    reference.update(toJson());
  }


}


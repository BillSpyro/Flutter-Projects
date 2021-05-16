import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase2/item.dart';
import 'package:firebase2/project.dart';
import 'package:flutter/material.dart';

final itemController = TextEditingController();
final listController = TextEditingController();

Random random = new Random();
int randomNumber = random.nextInt(100);

@override
void dispose() {
  itemController.dispose();
  dispose();
}

final firestoreInstance = FirebaseFirestore.instance;

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('To Do List')),
      body: Column(children: <Widget>[
        TextField(
          controller: listController,
          decoration: InputDecoration(hintText: 'Enter Project name'),
        ),
        Expanded(child: _buildBody(context))
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          firestoreInstance.collection("list").add({
            "name": listController.text,
            "listID": randomNumber,
          });
        },
        tooltip: 'Add to list',
        child: Icon(Icons.text_fields),
      ),
    );
  }

  Widget _buildListItem(BuildContext context, DocumentSnapshot data) {
    final project = Project.fromSnapshot(data);

    return Padding(
      key: ValueKey(project.name),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      ItemPage(id: project.id, name: project.name)),
            );
          },
          child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Column(
                children: [
                  Text(project.name, style: TextStyle(fontSize: 20)),
                ],
              ))),
    );
  }

  Widget _buildList(BuildContext context, List<DocumentSnapshot> snapshot) {
    return ListView(
      padding: const EdgeInsets.only(top: 20.0),
      children: snapshot.map((data) => _buildListItem(context, data)).toList(),
    );
  }

  Widget _buildBody(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('list').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return LinearProgressIndicator();

        return _buildList(context, snapshot.data.docs);
      },
    );
  }
}

class ItemPage extends StatefulWidget {
  ItemPage({this.id, this.name});

  final int id;
  final String name;

  @override
  _ItemPageState createState() {
    return _ItemPageState();
  }
}

class _ItemPageState extends State<ItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.name)),
      body: Column(children: <Widget>[
        TextField(
          controller: itemController,
          decoration: InputDecoration(hintText: 'Enter list item'),
        ),
        Expanded(child: _buildBody(context))
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          firestoreInstance.collection("item").add({
            "name": itemController.text,
            "crossed": false,
            "listID": widget.id,
          });
        },
        tooltip: 'Add to list',
        child: Icon(Icons.text_fields),
      ),
    );
  }

  Widget _buildListItem(BuildContext context, DocumentSnapshot data) {
    final item = Item.fromSnapshot(data);

    return Container(
      key: ValueKey(item.name),
      child: GestureDetector(
          onTap: () {
            setState(() {
              var boolean = item.crossed;
              if (boolean == false) {
                boolean = true;
              } else if (boolean == true) {
                boolean = false;
              }
              item.reference.update({'crossed': boolean});
            });
          },
          child: Column(
            children: [
              if (widget.id == item.id)
                Text(item.name,
                    style: TextStyle(
                        decoration: item.crossed == true
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                        fontSize: 20)),
            ],
          )),
    );
  }

  Widget _buildList(BuildContext context, List<DocumentSnapshot> snapshot) {
    return ListView(
      padding: const EdgeInsets.only(top: 20.0),
      children: snapshot.map((data) => _buildListItem(context, data)).toList(),
    );
  }

  Widget _buildBody(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('item').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return LinearProgressIndicator();

        return _buildList(context, snapshot.data.docs);
      },
    );
  }
}

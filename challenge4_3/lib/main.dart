import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListViews',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(title: Text('Planets')),
        body: BodyLayout(

        ),
      ),
    );
  }
}
class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}
// replace this function with the code in the examples
Widget _myListView(BuildContext context) {
  final names = ['Mercury', 'Venus', 'Earth', 'Mars',
  'Jupiter', 'Saturn', 'Uranus', 'Neptune', 'Pluto'];
  final facts = ['! 47.4 km/s          <-57.9 10^6km',
  '! 35 km/s             <-108.2 10^6km',
    '! 28.9 km/s          <-149.6 10^6km',
  '! 24.1 km/s          <-227.9 10^6km',
  '! 13.1 km/s          <-778.6 10^6km',
  '! 9,7 km/s          <-1433.5 10^6km',
  '! 6.8 km/s          <-2872.5 10^6km',
  '! 5.4 km/s          <-4495.1 10^6km',
  '! 4.7 km/s          <-5906.4 10^6km'];
  final images = [Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Mercury_in_color_-_Prockter07-edit1.jpg/1200px-Mercury_in_color_-_Prockter07-edit1.jpg',
      height: 50,
      width: 50,
      fit: BoxFit.fitWidth),
    Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/PIA23791-Venus-NewlyProcessedView-20200608.jpg/220px-PIA23791-Venus-NewlyProcessedView-20200608.jpg',
  height: 50,
  width: 50,
  fit: BoxFit.fitWidth),
    Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/The_Earth_seen_from_Apollo_17.jpg/1200px-The_Earth_seen_from_Apollo_17.jpg',
        height: 50,
        width: 50,
        fit: BoxFit.fitWidth),
    Image.network('https://upload.wikimedia.org/wikipedia/commons/0/02/OSIRIS_Mars_true_color.jpg',
        height: 50,
        width: 50,
        fit: BoxFit.fitWidth),
    Image.network('https://upload.wikimedia.org/wikipedia/commons/2/2b/Jupiter_and_its_shrunken_Great_Red_Spot.jpg',
        height: 50,
        width: 50,
        fit: BoxFit.fitWidth),
    Image.network('https://upload.wikimedia.org/wikipedia/commons/c/c7/Saturn_during_Equinox.jpg',
        height: 50,
        width: 50,
        fit: BoxFit.fitWidth),
    Image.network('https://upload.wikimedia.org/wikipedia/commons/3/3d/Uranus2.jpg',
        height: 50,
        width: 50,
        fit: BoxFit.fitWidth),
    Image.network('https://upload.wikimedia.org/wikipedia/commons/6/63/Neptune_-_Voyager_2_%2829347980845%29_flatten_crop.jpg',
        height: 50,
        width: 50,
        fit: BoxFit.fitWidth),
    Image.network('https://cdn.uanews.arizona.edu/s3fs-public/images/uanow/Pluto_UANow%20thmb.jpg',
        height: 50,
        width: 50,
        fit: BoxFit.fitWidth)];
  return ListView.builder(
  itemCount: names.length,
  itemBuilder: (context, index) {
  return Card( //                           <-- Card widget
  child: ListTile(
      tileColor: Colors.deepPurple,
  leading: (images[index]),
  title: Text(names[index],
      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
    subtitle: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Milkyway Galaxy',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
        Text(facts[index],
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),)
      ],
    ),

  ),
  );
  },
  );
}


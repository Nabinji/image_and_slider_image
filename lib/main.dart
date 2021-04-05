// import 'package:flutter/material.dart';

// void main() => runApp(
//       MyApp(),
//     );

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Home(),
//     );
//   }
// }

// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Image in Flutter"),
//         centerTitle: true,
//       ),
//       body: Column(
//         children: [
//           Center(
//             child: Image(
//               image: AssetImage("images/d.png"),
//               fit: BoxFit.cover,
//               width: MediaQuery.of(context).size.width,
//               height: 400.0,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Widget imagecaraousel = new Container(
      height: 500.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("images/a.png"),
          AssetImage("images/b.png"),
          AssetImage("images/c.png"),
          AssetImage("images/d.png"),
          AssetImage("images/e.png"),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(microseconds: 200),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Image in Flutter"),
        centerTitle: true,
      ),
      body: Column(
        children: [imagecaraousel],
      ),
    );
  }
}

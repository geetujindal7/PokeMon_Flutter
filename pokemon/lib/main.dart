// import 'dart:convert';

import 'package:flutter/material.dart';
import 'MyHomePage.dart';
// import 'package:http/http.dart' as http;

// import 'dummy.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
    
  }
}

// class MyHomePage  extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//   var url = "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";

// PokeHub pokeHub;

//   @override
//   void initState() {
//     super.initState();
//     fetchData();
//   }
//   fetchData() async {
//     var res = await http.get(url);
//     var decode = jsonDecode(res.body);
//     pokeHub = PokeHub.fromJson(decode);

//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Pokemon'),
//       backgroundColor: Colors.cyan,),
//       body: GridView.count(crossAxisCount: 2,
//       children: pokeHub.pokemon.map((e) => Card()).toList()

//       ),
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: Colors.cyan,
//         child: Icon(Icons.refresh),
//         onPressed: (){
          
//       }),
      
//     );
//   }
// }


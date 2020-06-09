import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pokemon/details.dart';
import 'package:pokemon/dummy.dart';
import 'package:http/http.dart' as http;

class MyHomePage  extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var url = "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";

PokeHub pokeHub;

  @override
  void initState() {
    super.initState();
    fetchData();
  }
  fetchData() async {
    var res = await http.get(url);
    var decode = jsonDecode(res.body);
    pokeHub = PokeHub.fromJson(decode);
    setState(() {
      
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pokemon'),
      backgroundColor: Colors.cyan,),
      body: pokeHub==null? Center(child: CircularProgressIndicator(),):
       GridView.count(crossAxisCount: 2,
      
      children: pokeHub.pokemon.map((poke) => Padding(padding: EdgeInsets.all(2),
              child:  InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (ctx) => Pokedetail(pokemon: poke)));
                },
                   child: Hero(
                     tag: poke.img,
                        child: Card(
                       
                       elevation: 3,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                      
                      Container(
                        height: 150,
                         width: 100,
                         decoration: BoxDecoration(
                           image: DecorationImage(fit: BoxFit.cover, image: NetworkImage(poke.img)),
                         ),
                         
                      ),
                      Text(poke.name),
                  ],),
          
        ),
                   ),
              ),
      )).toList()

      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyan,
        child: Icon(Icons.refresh),
        onPressed: (){
          
      }),
      
    );
  }
}
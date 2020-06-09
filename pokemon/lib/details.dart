import 'package:flutter/material.dart';
import 'package:pokemon/dummy.dart';

class Pokedetail extends StatelessWidget {
  // final String route = './details';
  final Pokemon pokemon;

  Pokedetail({this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(title: Text(pokemon.name),
      backgroundColor: Colors.cyan,),
      body: Stack(
        children: <Widget>[
          Positioned(
            
            height: MediaQuery.of(context).size.height/1.5 ,
            width: MediaQuery.of(context).size.width - 20,
            left: 10,
            top: MediaQuery.of(context).size.height * 0.1,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: Column(
                
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: <Widget>[
                   SizedBox(height: 70,),
                   Text(pokemon.name, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold ),),
                   Text("Height ${pokemon.height}"),
                   Text("Weight ${pokemon.weight}"),
                   Text("Types",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold ),),
                   Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: pokemon.type.map((e) => FilterChip(backgroundColor: Colors.amber, label: Text(e),onSelected: (b){},)).toList(),
                   ),
                  Text("Weekness",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold ),),
                   Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: pokemon.weaknesses.map((e) => FilterChip(backgroundColor: Colors.red, label: Text(e, style: TextStyle(color: Colors.white),),onSelected: (b){},)).toList(),
                   ),
                Text("Evolution",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold ),),
                   Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: pokemon.nextEvolution.map((e) => FilterChip(backgroundColor: Colors.green,label: Text(e.name,style: TextStyle(color: Colors.white),),onSelected: (b){},)).toList(),
                   ),

                 ],
              ),
            ),
          ),
          Align(alignment: Alignment.topCenter,
          child: Hero(tag: pokemon.img,child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover, image: NetworkImage(pokemon.img))),
          ),),)
        ],
      ) ,
      
    );
  }
}
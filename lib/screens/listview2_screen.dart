import 'package:flutter/material.dart';

class ListView2 extends StatelessWidget {
  var games = ["pou", "fornite", "pacman", "mortal kombat"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List view tipo 2'),
        ),
        body: ListView.separated(
          //Obtener el tamaño de mi lista
          itemCount: games.length,
          //Creamos el constructor
          itemBuilder: (context, index) => ListTile(
              //Asignamos el titulo a partir de mi lista
              title: Text(games[index]),
              //Asignaos el icono de cada elemento
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.pink),
              onTap: () {
                var seleccion = games[index];
                print(seleccion);
              }),
          separatorBuilder: (_, __) => Divider(),
        ));
  }
}

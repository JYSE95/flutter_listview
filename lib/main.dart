import 'package:flutter/material.dart';
import 'screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Quitamos debug
      debugShowCheckedModeBanner: false,
      //Configurar tema
      //La pantalla inicial
      initialRoute: "/listview1",
      //Las rutas del proyecto
      routes: {
        "/listview1": (BuildContext context) => ListView1(),
        "/listview2": (BuildContext context) => ListView2(),
      },
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.pink,
          //configurar texto
          textTheme: TextTheme(
            bodyText2: TextStyle(color: Colors.pink, fontSize: 30),
          )),
      //Pagina inicial
      // home: Primary(),
    );
  }
}

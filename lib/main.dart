

import 'package:flutter/material.dart';
import 'package:newapp/pantallas/contador.dart';


void main(){ /// debug del proyecto
  // debug del proyecto
  runApp(MyApp()); // runapp, llama a la clase MY app

}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

 

  // creacion de la clase
  @override
  Widget build (BuildContext context){
    // construimos wl widget utilizando la libreria material dart
      return MaterialApp(
        
       //--- llamamos el conjunto de componentes del material app
       debugShowCheckedModeBanner: false,
        home: contador(),
    );

  }

}
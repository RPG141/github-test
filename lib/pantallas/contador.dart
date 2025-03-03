import 'package:flutter/material.dart';

class contador extends StatefulWidget{   
  const contador({super.key});

  @override
  State<contador> createState() => _contadorState();
}

class _contadorState extends State<contador> {
  @override

  int clickcontador = 0;
  @override
  Widget build(BuildContext context) {
     return Scaffold( 
        appBar: AppBar(
          title: Text("Contador"), // texto a mostrar
        ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("cantidad de clicks"), //texto a mostrar
                  Text( '$clickcontador',
                   style: TextStyle(fontSize:150, fontWeight: FontWeight.w100)), 
              ],)
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            
            clickcontador ++;
            setState(() {});
            
          },
         

        )
        );
  
        
      
  }
}
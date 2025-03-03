import 'package:flutter/material.dart';

//creando la clase e importando el paquete de flutter al archivo

class contador extends StatefulWidget{   
  const contador({super.key});

  @override
  State<contador> createState() => _contadorState();
}

//creando la clase 

class _contadorState extends State<contador> {
 int clickcontador = 0; //definiendo la variable

  // creacion de los botones de suma, resta y reseteo

  void suma() { 
    setState(() {
      clickcontador++;
    });
  }

  void restar() {
    setState(() {
      clickcontador--;
    });
  }

  void reiniciar() {
    setState(() {
      clickcontador = 0;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    //staffold es la plataforma visual para la pantalla
     return Scaffold( 
        appBar: AppBar(
          title: Text("Contador"), // texto a mostrar
        ),
        //estrutura del funcion y la pantalla
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, //alinea los elementos dentro de un column o row
                children: [
                  Text("cantidad de clicks"), //texto a mostrar
                  Text( '$clickcontador',
                   style: TextStyle(fontSize:150, fontWeight: FontWeight.w100)), 
              

            
              SizedBox(height: 20), //agrega espacio entre los botones

              //ahora va a mostrar los botones en forma horinzotal
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    
                    // Funciones

                  FloatingActionButton(
                    onPressed: suma,
                    child: Icon(Icons.add),
                  ),

                  SizedBox(width: 10),
                  FloatingActionButton(
                    onPressed: restar,
                    child: Icon(Icons.remove),
                  ),

                  SizedBox(width: 10),
                  FloatingActionButton(
                    onPressed: reiniciar,
                    child: Icon(Icons.refresh),
                  ),

                ],
               )
              ]
            ) 
            
          ),
        
            
        );    
      
    }
}


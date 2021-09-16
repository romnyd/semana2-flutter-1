import 'package:flutter/material.dart';
import 'package:semanda2flutter1/widgets/botones.widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"),),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              child: Row(
                children: [
                  Text("zona resultados"),
                ],
              ),
              color: Colors.blue,
            ))
          ,
          Expanded(
            flex: 1,
            child: Container(
              child: Row(
                children: [
                  Text("zona ingreso"),
                ],
              ),
              color: Colors.red,
            ))
            ,
          Expanded( 
            flex: 2,
            child: Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: _listaBotonesFila1Prueba()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: _listaBotonesFila1Prueba()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: _listaBotonesFila1Prueba()),
                 Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: _listaBotonesFila1Prueba()),
                ],
              ),
              color: Colors.green,
            ))
          ,
        ],
      ),
    );
  }


  _listaBotonesFila1Prueba() {
    return [
      pintarBoton(metodo: (){}, compoente:  Text("7"), colorBoton: Colors.yellow),
      pintarBoton(metodo: (){}, compoente:  Icon(Icons.arrow_back_ios)),
      pintarBoton(metodo: (){}, compoente:  Text("8")),
      pintarBoton(metodo: (){}, compoente:  Text("9")),
      pintarBoton(metodo: (){print("object");}, valorFlex: 4, compoente:  Text("=")),
    ];
  }

  _listaBotonesFila1() {
    return [
      ElevatedButton(
        onPressed: (){}, 
        child: Text("7")
      )
      ,ElevatedButton(
        onPressed: (){}, 
        child: Text("8")
      ),
      ElevatedButton(
        onPressed: (){}, 
        child: Text("9")
      ),
      ElevatedButton(
        onPressed: (){}, 
        child: Text("÷")
      ),
      ElevatedButton(
        onPressed: (){}, 
        child: Icon(Icons.arrow_back)
      ),
      ElevatedButton(
        onPressed: (){}, 
        child: Text("C")
      )];
  }
}
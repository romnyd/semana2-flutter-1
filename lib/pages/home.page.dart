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
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              child: Row(
                children: [
                  Text("Zona resultado"),
                ],
              ),
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Row(
                children: [
                  Text("Zona ingreso"),
                ],
              ),
              color: Colors.red,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: _listaBotonesFila1M(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: _listaBotonesFila2(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: _listaBotonesFila3(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: _listaBotonesFila4(),
                  ),
                ],
              ),
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}

_listaBotonesFila1() {
  return [
    ElevatedButton(onPressed: () {}, child: Text("7")),
    ElevatedButton(onPressed: () {}, child: Text("8")),
    ElevatedButton(onPressed: () {}, child: Text("9")),
    ElevatedButton(onPressed: () {}, child: Text("÷")),
    ElevatedButton(onPressed: () {}, child: Icon(Icons.arrow_back)),
    ElevatedButton(
      onPressed: () {},
      child: Text("C"),
    )
  ];
}

_listaBotonesFila1M() {
  return [
    pintarBoton(widget: Text("7"), method: () {}),
    pintarBoton(widget: Text("8"), method: () {}),
    pintarBoton(widget: Text("9"), method: () {}),
    pintarBoton(widget: Text("/"), method: () {}),
    pintarBoton(
        widget: Text("="),
        method: () {
          print("object");
        }),
  ];
}

_listaBotonesFila2() {
  return [
    ElevatedButton(onPressed: () {}, child: Text("4")),
    ElevatedButton(onPressed: () {}, child: Text("5")),
    ElevatedButton(onPressed: () {}, child: Text("6")),
    ElevatedButton(onPressed: () {}, child: Text("*")),
    ElevatedButton(onPressed: () {}, child: Text("(")),
    ElevatedButton(
      onPressed: () {},
      child: Text(")"),
    )
  ];
}

_listaBotonesFila3() {
  return [
    ElevatedButton(onPressed: () {}, child: Text("1")),
    ElevatedButton(onPressed: () {}, child: Text("2")),
    ElevatedButton(onPressed: () {}, child: Text("3")),
    ElevatedButton(onPressed: () {}, child: Text("-")),
    ElevatedButton(onPressed: () {}, child: Text("Pow")),
    ElevatedButton(
      onPressed: () {},
      child: Text("Sqrt"),
    )
  ];
}

_listaBotonesFila4() {
  return [
    ElevatedButton(onPressed: () {}, child: Text("0")),
    ElevatedButton(onPressed: () {}, child: Text(".")),
    ElevatedButton(onPressed: () {}, child: Text("%")),
    ElevatedButton(onPressed: () {}, child: Text("+")),
    ElevatedButton(onPressed: () {}, child: Text("=")),
  ];
}

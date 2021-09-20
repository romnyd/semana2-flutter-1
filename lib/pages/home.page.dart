import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:semanda2flutter1/widgets/botones.widget.dart';
import 'package:math_expressions/math_expressions.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _expressions = "";
  String _result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mi Calculadora - @romnyd"),
        backgroundColor: Color(0xFF202124),
      ),
      body: body(),
    );
  }

  Container body() {
    return Container(
      color: Color(0xFF202124),
      child: Column(
        children: [
          ContainerWidget(textValue: "$_expressions", fontSize: 30),
          ContainerWidget(textValue: "$_result", fontSize: 40),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 1, horizontal: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: _listaBotonesFila1(),
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
              color: Color(0xFF202124),
            ),
          )
        ],
      ),
    );
  }

  _listaBotonesFila1() {
    return [
      pintarBoton(
          metodo: () {
            addValueOperation("7");
          },
          componente: Text("7")),
      pintarBoton(
          metodo: () {
            addValueOperation("8");
          },
          componente: Text("8")),
      pintarBoton(
          metodo: () {
            addValueOperation("9");
          },
          componente: Text("9")),
      pintarBoton(
          metodo: () {
            addValueOperation("/");
          },
          componente: Text("/")),
      pintarBoton(
          metodo: () {
            addValueOperation("remove_ant");
          },
          componente: Icon(Icons.arrow_back)),
      pintarBoton(
          metodo: () {
            cleanFieldsOperation();
          },
          componente: Text("C")),
    ];
  }

  _listaBotonesFila2() {
    return [
      pintarBoton(
          metodo: () {
            addValueOperation("4");
          },
          componente: Text("4")),
      pintarBoton(
          metodo: () {
            addValueOperation("5");
          },
          componente: Text("5")),
      pintarBoton(
          metodo: () {
            addValueOperation("6");
          },
          componente: Text("6")),
      pintarBoton(
          metodo: () {
            addValueOperation("*");
          },
          componente: Text("x")),
      pintarBoton(
          metodo: () {
            addValueOperation("(");
          },
          componente: Text("(")),
      pintarBoton(
          metodo: () {
            addValueOperation(")");
          },
          componente: Text(")")),
    ];
  }

  _listaBotonesFila3() {
    return [
      pintarBoton(
          metodo: () {
            addValueOperation("1");
          },
          componente: Text("1")),
      pintarBoton(
          metodo: () {
            addValueOperation("2");
          },
          componente: Text("2")),
      pintarBoton(
          metodo: () {
            addValueOperation("3");
          },
          componente: Text("3")),
      pintarBoton(
          metodo: () {
            addValueOperation("-");
          },
          componente: Text("-")),
      pintarBoton(
          metodo: () {
            addValueOperation("x²");
          },
          componente: Text("x²")),
      pintarBoton(
          metodo: () {
            addValueOperation("√");
          },
          componente: Text("√")),
    ];
  }

  _listaBotonesFila4() {
    return [
      pintarBoton(
          metodo: () {
            addValueOperation("0");
          },
          componente: Text("0")),
      pintarBoton(
          metodo: () {
            addValueOperation(".");
          },
          componente: Text(".")),
      pintarBoton(
          metodo: () {
            addValueOperation("%");
          },
          componente: Text("%")),
      pintarBoton(
          metodo: () {
            addValueOperation("+");
          },
          componente: Text("+")),
      pintarBoton(
          metodo: () {
            resultView();
          },
          componente: Text("="),
          valorflex: 2,
          btnColor: Colors.green),
    ];
  }

  addValueOperation(String val) {
    print("Selecciono $val");
    setState(() {
      if (_expressions == "0")
        _expressions = val;
      else if (val == 'remove_ant') {
      } else
        _expressions += val;
    });
  }

  cleanFieldsOperation() {
    setState(() {
      _expressions = "";
      _result = "";
    });
  }

  resultView() {
    try {
      Parser parser = new Parser();
      ContextModel contextModel = new ContextModel();
      print("Selecciono $_expressions");
      if (_expressions.contains('√')) {
        _expressions = _expressions.replaceAll('√', 'sqrt');
      }
      if (_expressions.contains('x²')) {
        _expressions = _expressions.replaceAll('x²', '*');
        _expressions = _expressions + _expressions[0];
      }
      Expression expressionFinal = parser.parse(_expressions);

      setState(() {
        _result = expressionFinal
            .evaluate(EvaluationType.REAL, contextModel)
            .toString();

        print("Selecciono $expressionFinal");
      });
    } catch (e) {
      setState(() {
        _result = "Sintaxis Error";
      });
    }
  }
}

class ContainerWidget extends StatelessWidget {
  final String textValue;
  final double fontSize;

  const ContainerWidget(
      {Key? key, required this.textValue, required this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(color: Color(0xFF3C4043)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              textValue,
              style: TextStyle(
                color: Colors.white,
                fontSize: fontSize,
              ),
            )
          ],
        ),
      ),
    );
  }
}

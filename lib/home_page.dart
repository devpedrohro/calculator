import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController firstNumberController =
      new TextEditingController();
  final TextEditingController secondNumberController =
      new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(40.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Output : $sum",
              style: new TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter First Number"),
              controller: firstNumberController,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter First Number"),
              controller: secondNumberController,
            ),
            new Padding(padding: const EdgeInsets.only(top: 20.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  onPressed: doAddition,
                  child: new Text("+"),
                  color: Colors.greenAccent,
                ),
                new MaterialButton(
                  onPressed: doSub,
                  child: new Text("-"),
                  color: Colors.greenAccent,
                )
              ],
            ),
            new Padding(padding: const EdgeInsets.only(top: 20.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  onPressed: doMul,
                  child: new Text("*"),
                  color: Colors.greenAccent,
                ),
                new MaterialButton(
                    onPressed: doDiv,
                    child: Text("/"),
                    color: Colors.greenAccent)
              ],
            ),
            new Padding(padding: const EdgeInsets.only(top: 20.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  onPressed: doClear,
                  child: new Text("Clear"),
                  color: Colors.greenAccent,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void doAddition() {
    setState(() {
      num1 = int.parse(firstNumberController.text);
      num2 = int.parse(secondNumberController.text);
      sum = num1 + num2;
    });
  }

  void doSub() {
    setState(() {
      num1 = int.parse(firstNumberController.text);
      num2 = int.parse(secondNumberController.text);
      sum = num1 - num2;
    });
  }

  void doMul() {
    setState(() {
      num1 = int.parse(firstNumberController.text);
      num2 = int.parse(secondNumberController.text);
      sum = num1 * num2;
    });
  }

  void doDiv() {
    setState(() {
      num1 = int.parse(firstNumberController.text);
      num2 = int.parse(secondNumberController.text);
      sum = num1 ~/ num2;
    });
  }

  void doClear() {
    setState(() {
      firstNumberController.text = "0";
      secondNumberController.text = "0";
    });
  }
}

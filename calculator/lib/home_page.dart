import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {

  var num1 = 0,num2 = 0,sum = 0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void doAddition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }
    void doSubtraction() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
    }
    void doMultiplication() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
    }
    void doDivision() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
    }
    void clear() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
      sum = 0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Calculator"),
        ),
        body: new Container(
          padding: const EdgeInsets.all(20.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                "Output: $sum",
                style: new TextStyle(
                fontSize: 20.0,
                )
              ),
              new TextField(
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter> [
                  WhitelistingTextInputFormatter.digitsOnly
                ],
                controller: t1,
              ),new TextField(
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter> [
                  WhitelistingTextInputFormatter.digitsOnly
                ],
                controller: t2,
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new RaisedButton(
                    child: new Text("+"),
                    onPressed: doAddition,
                  ),
                  new RaisedButton(
                    child: new Text("-"),
                    onPressed: doSubtraction,
                  ),
                ]
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new RaisedButton(
                    child: new Text("*"),
                    onPressed: doMultiplication ,
                  ),
                  new RaisedButton(
                    child: new Text("%"),
                    onPressed: doDivision,
                  ),
                ]
              ),
              new RaisedButton(
                child: new Text("Clear"),
                onPressed: () {clear();},
              )
            ],
          ),
        )
      );
  }
}

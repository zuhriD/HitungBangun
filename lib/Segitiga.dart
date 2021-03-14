import 'package:flutter/material.dart';

class LuasSegitiga extends StatelessWidget {
  TextEditingController controllerTinggi = new TextEditingController();
  TextEditingController controllerAlas = new TextEditingController();

  void kirimdata(BuildContext context) {
    var t = int.parse(controllerTinggi.text);
    var a = int.parse(controllerAlas.text);
    AlertDialog alertDialog = new AlertDialog(
      content: new Container(
        height: 130.0,
        child: new Column(
          children: <Widget>[
            new Text("Tinggi :${controllerTinggi.text} cm"),
            new Padding(padding: new EdgeInsets.only(top: 10.0)),
            new Text("Alas :${controllerAlas.text} cm"),
            new Padding(padding: new EdgeInsets.only(top: 10.0)),
            new Text("Luas Segitiga :${1 / 2 * a * t} cm"),
            new RaisedButton(
              padding: new EdgeInsets.all(10.0),
              color: Colors.red[500],
              child: new Text("Close", style: TextStyle(color: Colors.white)),
              onPressed: () => Navigator.pop(context),
            )
          ],
        ),
      ),
    );
    showDialog(context: context, child: alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Luas Segitiga"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Column(
          children: <Widget>[
            new TextField(
              controller: controllerTinggi,
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  labelText: "Tinggi",
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0))),
            ),
            new Padding(
              padding: new EdgeInsets.only(top: 20.0),
            ),
            new TextField(
              controller: controllerAlas,
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  labelText: "Alas",
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0))),
            ),
            new Padding(
              padding: new EdgeInsets.only(top: 20.0),
            ),
            new RaisedButton(
              child: new Text(
                "Hitung",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {
                kirimdata(context);
              },
            )
          ],
        ),
      ),
    );
  }
}

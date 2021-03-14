import 'package:flutter/material.dart';

class LuasTrapesium extends StatelessWidget {
  TextEditingController controllerSisiAtas = new TextEditingController();
  TextEditingController controllerSisiBawah = new TextEditingController();
  TextEditingController controllerTinggi = new TextEditingController();
  void kirimdata(BuildContext context) {
    var a = int.parse(controllerSisiAtas.text);
    var b = int.parse(controllerSisiBawah.text);
    var t = int.parse(controllerTinggi.text);
    AlertDialog alertDialog = new AlertDialog(
      content: new Container(
        height: 180.0,
        child: new Column(
          children: <Widget>[
            new Text("Sisi Atas :${controllerSisiAtas.text} cm"),
            new Padding(padding: new EdgeInsets.only(top: 10.0)),
            new Text("Sisi Bawah :${controllerSisiBawah.text} cm"),
            new Padding(padding: new EdgeInsets.only(top: 10.0)),
            new Text("Tinggi :${controllerTinggi.text} cm"),
            new Padding(padding: new EdgeInsets.only(top: 10.0)),
            new Text("Luas Trapesium :${1 / 2 * (a + b) * t} cm"),
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
        title: Text("Luas Trapesium"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Column(
          children: <Widget>[
            new TextField(
              controller: controllerSisiAtas,
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  labelText: "Sisi Atas",
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0))),
            ),
            new Padding(
              padding: new EdgeInsets.only(top: 20.0),
            ),
            new TextField(
              controller: controllerSisiBawah,
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  labelText: "Sisi Bawah",
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0))),
            ),
            new Padding(
              padding: new EdgeInsets.only(top: 20.0),
            ),
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

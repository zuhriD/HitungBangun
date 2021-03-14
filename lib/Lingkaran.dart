import 'package:flutter/material.dart';

class LuasLingkaran extends StatelessWidget {
  TextEditingController controllerJari = new TextEditingController();

  void kirimdata(BuildContext context) {
    var r = int.parse(controllerJari.text);
    const phi = 3.14;
    AlertDialog alertDialog = new AlertDialog(
      content: new Container(
        height: 130.0,
        child: new Column(
          children: <Widget>[
            new Text("Jari-jari :${controllerJari.text} cm"),
            new Padding(padding: new EdgeInsets.only(top: 10.0)),
            new Text("Luas Lingkaran :${phi * r * r} cm"),
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
        title: Text("Luas Lingkaran"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Column(
          children: <Widget>[
            new TextField(
              controller: controllerJari,
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  labelText: "Jari-jari",
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

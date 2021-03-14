import 'package:flutter/material.dart';

class LuasPersegiPanjang extends StatelessWidget {
  TextEditingController controllerLebar = new TextEditingController();
  TextEditingController controllerPanjang = new TextEditingController();

  void kirimdata(BuildContext context) {
    var l = int.parse(controllerLebar.text);
    var p = int.parse(controllerPanjang.text);
    AlertDialog alertDialog = new AlertDialog(
      content: new Container(
        height: 130.0,
        child: new Column(
          children: <Widget>[
            new Text("Lebar :${controllerLebar.text} cm"),
            new Padding(padding: new EdgeInsets.only(top: 10.0)),
            new Text("Panjang :${controllerPanjang.text} cm"),
            new Padding(padding: new EdgeInsets.only(top: 10.0)),
            new Text("Luas Persegi Panjang :${p * l} cm"),
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
        title: Text("Luas Persegi Panjang"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Column(
          children: <Widget>[
            new TextField(
              controller: controllerLebar,
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  labelText: "Lebar",
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0))),
            ),
            new Padding(
              padding: new EdgeInsets.only(top: 20.0),
            ),
            new TextField(
              controller: controllerPanjang,
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  labelText: "Panjang",
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

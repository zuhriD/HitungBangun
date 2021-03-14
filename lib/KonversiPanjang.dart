import 'package:flutter/material.dart';

class User {
  const User(this.name);
  final String name;
}

class KonversiPanjang extends StatefulWidget {
  @override
  _KonversiPanjang createState() => _KonversiPanjang();
}

class _KonversiPanjang extends State<KonversiPanjang> {
  TextEditingController controllerAngka = new TextEditingController();
  User selectUser;
  List<User> satuan = <User>[
    User("kilometer"),
    User("hektometer"),
    User("dekameter"),
    User("meter"),
    User("desimeter"),
    User("centimeter"),
    User("milimeter")
  ];

  User selectUser2;
  List<User> satuan2 = <User>[
    User("kilometer"),
    User("hektometer"),
    User("dekameter"),
    User("meter"),
    User("desimeter"),
    User("centimeter"),
    User("milimeter")
  ];

  void kirimdata(BuildContext context) {
    double konversi, konversi2;
    var a = double.parse(controllerAngka.text);
    var hasil = 0.0;
    const phi = 3.14;
    if (selectUser.name == "kilometer") {
      konversi = 1000;
    } else if (selectUser.name == "hektometer") {
      konversi = 100;
    } else if (selectUser.name == "dekameter") {
      konversi = 10;
    } else if (selectUser.name == "meter") {
      konversi = 1;
    } else if (selectUser.name == "desimeter") {
      konversi = 0.1;
    } else if (selectUser.name == "centimeter") {
      konversi = 0.01;
    } else if (selectUser.name == "milimeter") {
      konversi = 0.001;
    }
    double meter = konversi * a;
    if (selectUser2.name == "kilometer") {
      konversi2 = 1000;
    } else if (selectUser2.name == "hektometer") {
      konversi2 = 100;
    } else if (selectUser2.name == "dekameter") {
      konversi2 = 10;
    } else if (selectUser2.name == "meter") {
      konversi2 = 1;
    } else if (selectUser2.name == "desimeter") {
      konversi2 = 0.1;
    } else if (selectUser2.name == "centimeter") {
      konversi2 = 0.01;
    } else if (selectUser2.name == "milimeter") {
      konversi2 = 0.001;
    }
    hasil = meter / konversi2;
    AlertDialog alertDialog = new AlertDialog(
      content: new Container(
        height: 130.0,
        child: new Column(
          children: <Widget>[
            new Text("Angka :${controllerAngka.text}"),
            new Padding(padding: new EdgeInsets.only(top: 10.0)),
            new Text("Hasil :${hasil} " + "${selectUser2.name}"),
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
        title: Text("Konversi Satuan Panjang"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Column(
          children: <Widget>[
            new TextField(
              controller: controllerAngka,
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  labelText: "Masukkan Angka",
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0))),
            ),
            new Padding(
              padding: new EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    new Text("Pilih Satuan Awal"),
                    new DropdownButton<User>(
                      hint: new Text("Pilih satuan Awal"),
                      value: selectUser,
                      onChanged: (User newValue) {
                        setState(() {
                          selectUser = newValue;
                        });
                      },
                      items: satuan.map((User user) {
                        return new DropdownMenuItem(
                            value: user, child: new Text(user.name));
                      }).toList(),
                    ),
                  ],
                ),
                new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    new Text("Pilih Satuan Akhir"),
                    new DropdownButton<User>(
                      hint: new Text("Pilih satuan Awal"),
                      value: selectUser2,
                      onChanged: (User newValue) {
                        setState(() {
                          selectUser2 = newValue;
                        });
                      },
                      items: satuan.map((User user) {
                        return new DropdownMenuItem(
                            value: user, child: new Text(user.name));
                      }).toList(),
                    ),
                  ],
                )
              ],
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

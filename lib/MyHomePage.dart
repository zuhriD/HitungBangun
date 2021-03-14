import 'package:flutter/material.dart';
import 'package:HitungBangun/PersegiPanjang.dart';
import 'package:HitungBangun/Balok.dart';
import 'package:HitungBangun/Bola.dart';
import 'package:HitungBangun/Lingkaran.dart';
import 'package:HitungBangun/Segitiga.dart';
import 'package:HitungBangun/Kerucut.dart';
import 'package:HitungBangun/Tabung.dart';
import 'package:HitungBangun/Trapesium.dart';
import 'package:HitungBangun/KonversiPanjang.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hitung Bangun'),
      ),
      body: Center(
          child: new Column(
        children: [
          new Padding(padding: new EdgeInsets.only(top: 200.0)),
          new Text(
            "By Abdurrozzaaq Ashshiddiqi Zuhri",
            style: TextStyle(color: Colors.black, fontSize: 20.0),
          ),
          new Padding(padding: new EdgeInsets.only(bottom: 10.0)),
          new Column(
            children: <Widget>[
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        child: Text('Luas Persegi Panjang'),
                        onPressed: () {
                          // Navigate to the second screen when tapped.
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => LuasPersegiPanjang()));
                        },
                      ),
                      ElevatedButton(
                        child: Text('Luas Segitiga'),
                        onPressed: () {
                          // Navigate to the second screen when tapped.
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => LuasSegitiga()));
                        },
                      ),
                      ElevatedButton(
                        child: Text('Luas Lingkaran'),
                        onPressed: () {
                          // Navigate to the second screen when tapped.
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => LuasLingkaran()));
                        },
                      ),
                      ElevatedButton(
                        child: Text('Luas Trapesium'),
                        onPressed: () {
                          // Navigate to the second screen when tapped.
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => LuasTrapesium()));
                        },
                      ),
                    ],
                  ),
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        child: Text('Volume Balok'),
                        onPressed: () {
                          // Navigate to the second screen when tapped.
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => VolumeBalok()));
                        },
                      ),
                      ElevatedButton(
                        child: Text('Volume Bola'),
                        onPressed: () {
                          // Navigate to the second screen when tapped.
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => VolumeBola()));
                        },
                      ),
                      ElevatedButton(
                        child: Text('Volume Kerucut'),
                        onPressed: () {
                          // Navigate to the second screen when tapped.
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => VolumeKerucut()));
                        },
                      ),
                      ElevatedButton(
                        child: Text('Volume Tabung'),
                        onPressed: () {
                          // Navigate to the second screen when tapped.
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => VolumeTabung()));
                        },
                      ),
                    ],
                  )
                ],
              ),
              new Column(
                children: [
                  ElevatedButton(
                    child: Text('Konversi Satuan Panjang'),
                    onPressed: () {
                      // Navigate to the second screen when tapped.
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => KonversiPanjang()));
                    },
                  ),
                ],
              )
            ],
          ),
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'Spesifik_Mobil.dart';

void _showSimpleDialog(context) {
  showDialog(
    context: context,
    builder: (context) {
      return SimpleDialog(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Permintaan Terkirim",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
        ],
      );
    },
  );
}

class DetailMobil extends StatelessWidget {
  final String title;
  final double price;
  final String color;
  final String gearbox;
  final String fuel;
  final String brand;
  final String path;

  DetailMobil(
      {this.title,
      this.price,
      this.color,
      this.gearbox,
      this.fuel,
      this.brand,
      this.path});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Rental Mobil"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          Text(
            brand,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          Hero(tag: title, child: Image.asset(path)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SpesifikMobil(
                name: '12 Bulan',
                price: price * 12,
                name2: 'Rupiah',
              ),
              SpesifikMobil(
                name: '6 Bulan',
                price: price * 6,
                name2: 'Rupiah',
              ),
              SpesifikMobil(
                name: '1 Bulan',
                price: price * 1,
                name2: 'Rupiah',
              )
            ],
          ),
          SizedBox(height: 20),
          Text(
            'Sepesifikasi Kendaraan',
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SpesifikMobil(
                name: 'Warna',
                name2: color,
              ),
              SpesifikMobil(
                name: 'Gearbox',
                name2: gearbox,
              ),
              SpesifikMobil(
                name: 'Bahan Bakar/Liter',
                name2: fuel,
              )
            ],
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              _showSimpleDialog(context);
            },
            // padding: EdgeInsets.all(10.0),
            // color: Colors.blueAccent,
            child: Text(
              'Rental',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

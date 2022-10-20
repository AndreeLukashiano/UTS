import 'package:flutter/material.dart';

class CarItem {
  final String title;
  final double price;
  final String path;
  final String color;
  final String gearbox;
  final String fuel;
  final String brand;

  CarItem(
      {@required this.title,
      @required this.price,
      @required this.path,
      @required this.color,
      @required this.gearbox,
      @required this.fuel,
      @required this.brand});
}

CarsList allCars = CarsList(cars: [
  CarItem(
      title: 'Toyota Avanza',
      price: 200000,
      color: 'Putih',
      gearbox: '5',
      fuel: '13L',
      brand: 'Toyota',
      path: 'images/assets/avanza.jpg'),
  CarItem(
      title: 'Honda Jazz',
      price: 220000,
      color: 'Kuning',
      gearbox: '6',
      fuel: '10L',
      brand: 'Honda',
      path: 'images/assets/jazz.jpg'),
  CarItem(
      title: 'Toyota Yaris',
      price: 220000,
      color: 'Kuning',
      gearbox: '5',
      fuel: '10L',
      brand: 'Toyota',
      path: 'images/assets/yaris.jpg'),
  CarItem(
      title: 'Honda Mobilio',
      price: 215000,
      color: 'Putih',
      gearbox: '5',
      fuel: '12L',
      brand: 'Honda',
      path: 'images/assets/mobilio.jpg'),
  CarItem(
      title: 'Esemka Garuda',
      price: 300000,
      color: 'Abu Abu',
      gearbox: '6',
      fuel: '17L',
      brand: 'Esemka',
      path: 'images/assets/esemka.jpg'),
  CarItem(
      title: 'Toyota Innova',
      price: 250000,
      color: 'Merah Tua',
      gearbox: '5',
      fuel: '15L',
      brand: 'Toyota',
      path: 'images/assets/innova.jpg'),
]);

class CarsList {
  List<CarItem> cars;

  CarsList({this.cars});
}

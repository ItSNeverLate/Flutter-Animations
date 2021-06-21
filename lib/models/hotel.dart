import 'package:flutter/foundation.dart';

class Hotel {
  final String id;
  final String name;
  final double price;
  final double rating;
  final String image;

  const Hotel({
    @required this.id,
    @required this.name,
    @required this.price,
    @required this.rating,
    @required this.image,
  });
}

const HOTELS = [
  Hotel(
    id: 'hotel1',
    name: 'Hotel A',
    price: 25.0,
    rating: 4.0,
    image: 'assets/images/hotel1.jpeg',
  ),
  Hotel(
    id: 'hotel2',
    name: 'Hotel B',
    price: 40.0,
    rating: 5.0,
    image: 'assets/images/hotel2.jpeg',
  ),
  Hotel(
    id: 'hotel3',
    name: 'Hotel C',
    price: 30.0,
    rating: 2.0,
    image: 'assets/images/hotel3.jpeg',
  ),
  Hotel(
    id: 'hotel4',
    name: 'Hotel D',
    price: 70.0,
    rating: 3.0,
    image: 'assets/images/hotel4.jpeg',
  ),
  Hotel(
    id: 'hotel5',
    name: 'Hotel E',
    price: 25.0,
    rating: 4.5,
    image: 'assets/images/hotel5.jpeg',
  ),
  Hotel(
    id: 'hotel6',
    name: 'Hotel F',
    price: 15.0,
    rating: 4.2,
    image: 'assets/images/hotel6.jpeg',
  ),
  Hotel(
    id: 'hotel7',
    name: 'Hotel G',
    price: 10.0,
    rating: 2.0,
    image: 'assets/images/hotel7.jpeg',
  ),
  Hotel(
    id: 'hotel8',
    name: 'Hotel H',
    price: 50.0,
    rating: 3.0,
    image: 'assets/images/hotel8.jpeg',
  ),
  Hotel(
    id: 'hotel9',
    name: 'Hotel I',
    price: 45.0,
    rating: 3.5,
    image: 'assets/images/hotel9.jpeg',
  ),
  Hotel(
    id: 'hotel10',
    name: 'Hotel J',
    price: 30.0,
    rating: 3.0,
    image: 'assets/images/hotel10.jpeg',
  ),
];

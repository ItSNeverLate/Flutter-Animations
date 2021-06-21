import 'package:flutter/material.dart';
import 'package:flutter_animations/models/hotel.dart';
import 'package:flutter_animations/screens/detail_screen.dart';

class HotelTile extends StatelessWidget {
  final Hotel hotel;

  const HotelTile({@required this.hotel});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      key: ValueKey(hotel.id),
      title: Text(
        hotel.name,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Row(
        children: [
          Icon(
            Icons.star,
            color: Colors.orange,
            size: 16,
          ),
          Text(hotel.rating.toString()),
        ],
      ),
      leading: Hero(
        tag: hotel.id,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            hotel.image,
            height: double.infinity,
            width: 70.0,
            fit: BoxFit.cover,
          ),
        ),
      ),
      contentPadding: EdgeInsets.all(10),
      trailing: Text(
        '\$${hotel.price}',
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          color: Colors.grey[600],
        ),
      ),
      onTap: () => Navigator.pushNamed(
        context,
        DetailScreen.id,
        arguments: hotel.id,
      ),
    );
  }
}

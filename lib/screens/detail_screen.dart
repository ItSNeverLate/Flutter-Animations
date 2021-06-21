import 'package:flutter/material.dart';
import 'package:flutter_animations/models/hotel.dart';

class DetailScreen extends StatelessWidget {
  static const id = 'DetailScreen';

  @override
  Widget build(BuildContext context) {
    final hotelId = ModalRoute.of(context).settings.arguments as String;
    final selectedHotel = HOTELS.firstWhere((hotel) => hotel.id == hotelId);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Hero(
            tag: selectedHotel.id,
            child: Image.asset(
              selectedHotel.image,
              height: 300.0,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            title: Text(selectedHotel.name),
            subtitle: Text(selectedHotel.rating.toString()),
            trailing: Icon(
              Icons.favorite,
              color: Colors.grey[400],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'A hotel is an establishment that provides paid lodging on a short-term basis. Facilities provided inside a hotel room may range from a modest-quality mattress in a small room to large suites with bigger, higher-quality beds, a dresser, a refrigerator and other kitchen facilities, upholstered chairs, a flat screen television, and en-suite bathrooms. Small, lower-priced hotels may offer only the most basic guest services and facilities. Larger, higher-priced hotels may provide additional guest facilities such as a swimming pool, business centre (with computers, printers, and other office equipment), childcare, conference and event facilities, tennis or basketball courts, gymnasium, restaurants, day spa, and social function services. Hotel rooms are usually numbered (or named in some smaller hotels and B&Bs) to allow guests to identify their room.',
              style: TextStyle(color: Colors.grey[600]),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}

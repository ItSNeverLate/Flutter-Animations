import 'package:flutter/material.dart';
import 'package:flutter_animations/models/hotel.dart';
import 'package:flutter_animations/widgets/hotel_tile.dart';
import 'package:flutter_animations/widgets/screen_title.dart';

class HomeScreen extends StatelessWidget {
  static const id = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/banner.jpeg',
            ),
            fit: BoxFit.fitWidth,
            colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate),
            alignment: Alignment.topCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            // SizedBox(height: 120),
            ScreenTitle(title: 'Ideal Hotel'),
            SizedBox(height: 60),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.white,
                ),
                child: ListView.builder(
                  itemCount: HOTELS.length,
                  itemBuilder: (_, index) => HotelTile(hotel: HOTELS[index]),
                ),
              ),
            ),
          ],
        ),
        // child: Column(children: [
        //   SizedBox(
        //     height: 200.0,
        //   ),

        // ]),
      ),
    );
  }
}

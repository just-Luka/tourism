import 'dart:ui';

import 'package:eapp1/data/models/firestore/hotel_model.dart';
import 'package:eapp1/presentation/widgets/icons/bookmark_icon.dart';
import 'package:eapp1/presentation/widgets/icons/location_icon.dart';
import 'package:eapp1/presentation/widgets/icons/star_icon.dart';
import 'package:eapp1/presentation/widgets/price_oval_banner.dart';
import 'package:eapp1/presentation/widgets/texts/hotel_title_text.dart';
import 'package:flutter/material.dart';

class HotelBigCard extends StatelessWidget {
  final HotelModel hotelModel;

  const HotelBigCard({
    Key? key,
    required this.hotelModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 250,
          height: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            image: DecorationImage(
              image: AssetImage(hotelModel.image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 190, top: 10),
          child: BookmarkIcon(
            hotel: hotelModel,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, top: 150),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                width: 200.0,
                height: 88.0,
                color: Colors.black.withOpacity(0.1),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HotelTitleText(
                        textColor: Colors.white,
                        text: hotelModel.name,
                      ),
                      const SizedBox(height: 5),
                      LocationIcon(
                        color: Colors.white,
                        text: hotelModel.location,
                      ),
                      const SizedBox(height: 5),
                      StarIcon(
                        textColor: Colors.white,
                        star: hotelModel.star,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 80, top: 218),
          child: PriceOvalBanner(
            price: hotelModel.price,
            per: hotelModel.per,
          ),
        ),
      ],
    );
  }
}

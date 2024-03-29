import 'package:eapp1/presentation/widgets/texts/price_text.dart';
import 'package:flutter/material.dart';

class PriceOvalBanner extends StatelessWidget {
  final String price;
  final String per;

  const PriceOvalBanner({Key? key, required this.price, required this.per})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: Colors.orange),
      child: Center(
          child: PriceText(
        textColor: Colors.white,
        priceColor: Colors.white,
        per: per,
        price: price,
      )),
    );
  }
}

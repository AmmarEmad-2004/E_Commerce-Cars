import 'package:cars_app/core/widgets/size.dart';
import 'package:cars_app/modules/home/presentation/widgets/footer_buttons_cart_screen.dart';
import 'package:flutter/material.dart';
import 'cart_info_and_counter.dart';

class CarInfoInCartScreen extends StatelessWidget {
  const CarInfoInCartScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff222222),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(231, 0, 0, 0),
            blurRadius: 8,
            offset: Offset(0, -4),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
          CustomSize(h: MediaQuery.of(context).size.height * 0.03),
          CartInfoAndCounter(),
          CustomSize(h: 16),
          Text(' advanced technology. It features a comfortable interior, excellent fuel efficiency, and high-level safety systems to ensure maximum protection for you and your passengers. Whether for daily use or long-distance travel, this car is built to deliver performance, reliability, and comfort.', 
           maxLines: 6,
            overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
          Spacer(),
          FooterButtonsCartScreen(),
        ],),
      ),
    );
  }
}

import 'package:cars_app/core/widgets/custom_background.dart';
import 'package:flutter/cupertino.dart';

class PrivacyAndTermsOfService extends StatelessWidget {
  const PrivacyAndTermsOfService({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      child: Column(
        children: [
          Text('Version 1.0.0'),
          Row(
            children: [
              Text(
                'Terms of Service |',
                style: TextStyle(color: Color(0xff3175b4)),
              ),

              Text(
                ' Terms of Service',
                style: TextStyle(color: Color(0xff3175b4)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

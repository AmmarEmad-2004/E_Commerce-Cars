import 'package:flutter/cupertino.dart';

abstract class AddCarValidations {
  static String? validateCarName(BuildContext context, String? name) {
    if (name == null || name.trim().isEmpty) {
      return '🔴 Car name is required!';
    }
    if (name.length < 2) {
      return '🔴 Car name must be at least 2 characters.';
    }
    return null;
  }

  static String? validatePrice(BuildContext context, String? price) {
    if (price == null || price.trim().isEmpty) {
      return '🔴 Price is required!';
    }
    final value = double.tryParse(price.replaceAll(',', '').replaceAll('\$', ''));
    if (value == null || value <= 0) {
      return '🔴 Please enter a valid positive price.';
    }
    return null;
  }

  static String? validateDescription(BuildContext context, String? desc) {
    if (desc == null || desc.trim().isEmpty) {
      return '🔴 Description is required!';
    }
    if (desc.length < 10) {
      return '🔴 Description must be at least 10 characters.';
    }
    return null;
  }

  static String? validateImage(BuildContext context, String? imagePath) {
    if (imagePath == null || imagePath.isEmpty) {
      return '🔴 Please select an image for the car.';
    }
    return null;
  }
}

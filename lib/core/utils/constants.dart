import 'package:flutter_assessment/core/utils/assets_data.dart';

class Constants {
  static getMockedJson() {
    return {
      "id": 1,
      "name": "Two Bed Room",
      "description":
          "High-quality two bed room flat with beautiful landscape and decoy.",
      "price": 149.99,
      "images": [
        AssetsData.imageTile1.absolutePath,
        AssetsData.imageTile2.absolutePath,
        AssetsData.imageTile3.absolutePath,
        AssetsData.imageTile4.absolutePath,
      ],
      "rating": 4.5,
      "reviews": [
        {
          "user": "Jane Doe",
          "comment": "Great sound quality and battery life!",
          "rating": 5
        },
        {
          "user": "John Smith",
          "comment": "Comfortable but slightly overpriced.",
          "rating": 4
        },
        {
          "user": "Emily Johnson",
          "comment": "Amazing noise cancellation!",
          "rating": 5
        }
      ],
      "stock": 25,
      "category": "Electronics",
      "brand": "SoundPro"
    };
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assessment/core/utils/constants.dart';
import 'package:flutter_assessment/data/models/product_model.dart';
import 'package:flutter_assessment/widgets/custom_image_view.dart';

class ProductDetailScreen extends StatelessWidget {
  final ProductModel product = ProductModel.fromJson(Constants.getMockedJson());

  ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Carousel Slider
            CarouselSlider(
              options: CarouselOptions(
                height: 300.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
              items: product.images.map((imageUrl) {
                return CustomImageView(
                  width: double.infinity,
                  height: double.infinity,
                  imagePath: imageUrl,
                  fit: BoxFit.cover,
                  radius: BorderRadius.circular(10),
                );
              }).toList(),
            ),
            // Product Information
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: const TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    product.description,
                    style: const TextStyle(fontSize: 16.0),
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$${product.price.toStringAsFixed(2)}',
                        style: const TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.orange),
                          const SizedBox(width: 4),
                          Text(
                              '${product.rating} (${product.reviews.length} reviews)'),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Text(
                    'Category: ${product.category}',
                    style: const TextStyle(fontSize: 16.0),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    'Brand: ${product.brand}',
                    style: const TextStyle(fontSize: 16.0),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    'Stock: ${product.stock} items left',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: product.stock > 0 ? Colors.black : Colors.red,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  const Divider(),
                  const Text(
                    'User Reviews',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5.0),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: product.reviews.length,
                    itemBuilder: (context, index) {
                      final review = product.reviews[index];
                      return Card(
                        margin: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Icon(Icons.person,
                                      size: 20.0, color: Colors.grey),
                                  const SizedBox(width: 8.0),
                                  Text(
                                    review.user,
                                    style: const TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8.0),
                              Text(
                                review.comment,
                                style: const TextStyle(fontSize: 14.0),
                              ),
                              const SizedBox(height: 8.0),
                              Row(
                                children: List.generate(5, (starIndex) {
                                  return Icon(
                                    starIndex < review.rating
                                        ? Icons.star
                                        : Icons.star_border,
                                    size: 16.0,
                                    color: Colors.orange,
                                  );
                                }),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Product {
  final String image, title, description, price;
  final int size, id;
  final Color color;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Flour Finest",
    price: "234.45",
    size: 12,
    description: dummyText,
    image: "assets/images/icons8-product-100.png",
    color: Colors.brown,
  ),
  Product(
    id: 2,
    title: "Office Code",
    price: "234",
    size: 12,
    description: dummyText,
    image: "assets/images/icons8-product-100-2.png",
    color: const Color(0xFF3D82AE),
  ),
  Product(
    id: 3,
    title: "Office Code",
    price: "234",
    size: 12,
    description: dummyText,
    image: "assets/images/icons8-product-100-3.png",
    color: Colors.green,
  ),
  Product(
    id: 4,
    title: "Shampoo",
    price: "50",
    size: 12,
    description: dummyText,
    image: "assets/images/icons8-product-100-4.png",
    color: Colors.greenAccent,
  ),
  Product(
    id: 5,
    title: "Shampoo",
    price: "50",
    size: 12,
    description: dummyText,
    image: "assets/images/icons8-product-100-4.png",
    color: Colors.black,
  ),
  Product(
    id: 6,
    title: "Shampoo",
    price: "50",
    size: 12,
    description: dummyText,
    image: "assets/images/icons8-product-100-4.png",
    color: Colors.greenAccent,
  ),
  Product(
    id: 7,
    title: "Shampoo",
    price: "50",
    size: 12,
    description: dummyText,
    image: "assets/images/icons8-product-100-4.png",
    color: Colors.greenAccent,
  ),
];

String dummyText =
    "Flutter is Google's cross-platform UI toolkit created to help developers build expressive and beautiful mobile applications. In the article, you will learn how to build and secure a Flutter application with Auth0 using the open-source AppAuth library with the flutter_appauth wrapper plugin.";

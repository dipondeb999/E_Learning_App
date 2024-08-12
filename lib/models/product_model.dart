import 'package:flutter/material.dart';

class Product{
  final int id;
  final String title;
  final String image;
  final Color color;
  final int courses;

  Product({
    required this.id,
    required this.title,
    required this.image,
    required this.color,
    required this.courses,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: 'Graphic Design',
    image: 'assets/images/graphics.png',
    color: const Color(0xFF71b8ff),
    courses: 16,
  ),
  Product(
    id: 2,
    title: 'Programming',
    image: 'assets/images/programming.png',
    color: const Color(0xFFff6374),
    courses: 22,
  ),
  Product(
    id: 3,
    title: 'Finance',
    image: 'assets/images/finance.png',
    color: const Color(0xFFffaa5b),
    courses: 15,
  ),
  Product(
    id: 4,
    title: 'UI/UX Design',
    image: 'assets/images/ux.png',
    color: const Color(0xFF9ba0fc),
    courses: 18,
  ),
];
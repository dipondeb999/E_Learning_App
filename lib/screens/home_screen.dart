import 'package:e_learning_app/components/category_list.dart';
import 'package:e_learning_app/components/constants.dart';
import 'package:e_learning_app/components/custom_app_bar.dart';
import 'package:e_learning_app/components/profile.dart';
import 'package:e_learning_app/components/sorting.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const CustomAppBar(),
              const SizedBox(height: 20),
              const Profile(),
              const SizedBox(height: 20),
              const Sorting(),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'See All',
                      style: TextStyle(
                        color: kBlue,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const CategoryList(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}


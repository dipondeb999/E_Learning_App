import 'package:e_learning_app/components/category_list.dart';
import 'package:e_learning_app/constants.dart';
import 'package:e_learning_app/components/custom_app_bar.dart';
import 'package:e_learning_app/components/profile.dart';
import 'package:e_learning_app/components/sorting.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key,});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    int _selectIndex = 0;

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
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 20,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: GNav(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            gap: 8,
            activeColor: kPink,
            iconSize: 24,
            tabBackgroundColor: Colors.grey[100]!,
            color: Colors.grey,
            selectedIndex: _selectIndex,
            onTabChange: (index) {
              setState(() {
                _selectIndex = index;
              });
            },
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.favorite,
                text: 'Likes',
              ),
              GButton(
                icon: Icons.sms,
                text: 'Message',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}


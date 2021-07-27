import 'package:flutter/material.dart';
import '../data/fake.dart';

import '../widgets/category_card.dart';
import '../widgets/header_main.dart';
import '../widgets/image_card.dart';
import '../widgets/promo_card.dart';
import '../widgets/section.dart';
import './category_screen.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  onCategorySelected(category) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CategoryScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              Section(
                'Categories',
                Fake.categories.map((c) {
                  return CategoryCard(
                    title: c.title,
                    iconPath: c.iconPath,
                    onTap: () {
                      onCategorySelected(c);
                    },
                  );
                }).toList(),
              ),
              Section(
                'Today\'s Promo',
                Fake.promotions.map((p) {
                  return PromoCard(
                    title: p.title,
                    subtitle: p.subtitle,
                    tag: p.tag,
                    caption: p.caption,
                    imagePath: p.imagePath,
                    backgroundImagePath: p.backgroundImagePath,
                  );
                }).toList(),
              ),
              
              Section(
                  'Popular Dishes', 
                  Fake.trending
                      .map((imagePath) => ImageCard(imagePath))
                      .toList()),
              Section(
                  'Porpular Restaurants',
                  Fake.featured
                      .map((imagePath) => ImageCard(imagePath))
                      .toList()),
            ],
          ),
        ),
      ),
    );
  }
}

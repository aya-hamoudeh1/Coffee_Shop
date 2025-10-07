import 'package:coffee_shop/screens/home/widgets/app_bar_content.dart';
import 'package:coffee_shop/screens/home/widgets/bottom_nav_bar.dart';
import 'package:coffee_shop/screens/home/widgets/coffee_card.dart';
import 'package:coffee_shop/screens/home/widgets/coffee_category_tabs.dart';
import 'package:coffee_shop/screens/home/widgets/custom_search_bar.dart';
import 'package:coffee_shop/screens/home/widgets/promo_card.dart';
import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static List<CoffeeCard> _buildCoffeeCards() {
    return const [
      CoffeeCard(
        imagePath: 'assets/images/png/product1.png',
        name: 'Caffe Mocha',
        subtitle: 'Deep Foam',
        price: 4.53,
        rating: 4.8,
      ),
      CoffeeCard(
        imagePath: 'assets/images/png/product2.png',
        name: 'Flat White',
        subtitle: 'Espresso',
        price: 3.90,
        rating: 4.9,
      ),
      CoffeeCard(
        imagePath: 'assets/images/png/product3.png',
        name: 'Cappuccino',
        subtitle: 'with Foam',
        price: 4.20,
        rating: 4.7,
      ),
      CoffeeCard(
        imagePath: 'assets/images/png/product4.png',
        name: 'Latte',
        subtitle: 'with Caramel',
        price: 4.80,
        rating: 4.6,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 248.0,
            child: Container(color: AppColors.darkBackground),
          ),

          SafeArea(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    children: [
                      SizedBox(height: 16),
                      AppBarContent(),
                      SizedBox(height: 20),
                      CustomSearchBar(),
                      SizedBox(height: 20),
                      PromoCard(),
                      SizedBox(height: 24),
                      CoffeeCategoryTabs(),
                      SizedBox(height: 20),
                    ],
                  ),
                ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: CustomScrollView(
                      slivers: [
                        SliverGrid(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 16,
                                mainAxisSpacing: 16,
                                childAspectRatio: 0.75,
                              ),
                          delegate: SliverChildListDelegate(
                            _buildCoffeeCards(),
                          ),
                        ),
                        const SliverToBoxAdapter(child: SizedBox(height: 24)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

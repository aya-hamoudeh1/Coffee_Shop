import 'package:coffee_shop/screens/detail/widgets/detail_app_bar.dart';
import 'package:coffee_shop/screens/detail/widgets/detail_bottom_bar.dart';
import 'package:coffee_shop/screens/detail/widgets/detail_description_section.dart';
import 'package:coffee_shop/screens/detail/widgets/detail_header_section.dart';
import 'package:coffee_shop/screens/detail/widgets/detail_size_selector.dart';
import 'package:coffee_shop/screens/order/order_screen.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final String imagePath;
  final String name;
  final String subtitle;
  final double price;
  final double rating;

  const DetailScreen({
    super.key,
    required this.imagePath,
    required this.name,
    required this.subtitle,
    required this.price,
    required this.rating,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  String selectedSize = 'M';
  bool isFavorite = false;
  bool isExpanded = false;

  void _toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  void _toggleExpanded() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  void _selectSize(String size) {
    setState(() {
      selectedSize = size;
    });
  }

  void _navigateToOrderScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const OrderScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEDEDED),
      appBar: DetailAppBar(
        isFavorite: isFavorite,
        onFavoriteToggle: _toggleFavorite,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    widget.imagePath,
                    height: 220,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 20.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DetailHeaderSection(
                    name: widget.name,
                    subtitle: widget.subtitle,
                    rating: widget.rating,
                  ),
                  const SizedBox(height: 20),
                  const Divider(color: Colors.grey, thickness: 1),
                  const SizedBox(height: 20),
                  DetailDescriptionSection(
                    isExpanded: isExpanded,
                    onToggleExpanded: _toggleExpanded,
                  ),
                  const SizedBox(height: 24),
                  DetailSizeSelector(
                    selectedSize: selectedSize,
                    onSelectSize: _selectSize,
                  ),
                  const SizedBox(height: 80),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: DetailBottomBar(
        price: widget.price,
        onBuyNow: _navigateToOrderScreen,
      ),
    );
  }
}
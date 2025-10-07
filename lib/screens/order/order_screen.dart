import 'package:coffee_shop/screens/order/widgets/delivery_address_section.dart';
import 'package:coffee_shop/screens/order/widgets/discount_card.dart';
import 'package:coffee_shop/screens/order/widgets/order_item_card.dart';
import 'package:coffee_shop/screens/order/widgets/order_toggle_switch.dart';
import 'package:coffee_shop/screens/order/widgets/payment_method_bottom_bar.dart';
import 'package:coffee_shop/screens/order/widgets/payment_summary_section.dart';
import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';
import '../delivery/delivery_screen.dart';
import '../onboarding/widgets/custom_button.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  bool isDeliverySelected = true;

  void _onDeliveryTap() {
    setState(() {
      isDeliverySelected = true;
    });
  }

  void _onPickUpTap() {
    setState(() {
      isDeliverySelected = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEDEDED),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: AppColors.darkBackground,
            size: 20,
          ),
        ),
        title: Text(
          'Order',
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 16.0,
            ),
            child: OrderToggleSwitch(
              isDeliverySelected: isDeliverySelected,
              onDeliveryTap: _onDeliveryTap,
              onPickUpTap: _onPickUpTap,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16),
                  DeliveryAddressSection(),
                  SizedBox(height: 24),
                  OrderItemCard(),
                  SizedBox(height: 14),
                  DiscountCard(),
                  SizedBox(height: 24),
                  PaymentSummarySection(),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        padding: EdgeInsets.only(
          top: 24,
          bottom: MediaQuery.of(context).padding.bottom,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const PaymentMethodBottomBar(),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(
                left: 24.0,
                right: 24.0,
                bottom: 24.0,
              ),
              child: CustomButton(
                text: 'Order',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DeliveryScreen(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

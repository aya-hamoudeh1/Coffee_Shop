import 'package:coffee_shop/screens/delivery/widgets/custom_app_bar_icon.dart';
import 'package:coffee_shop/screens/delivery/widgets/delivery_info_panel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import '../../utils/app_colors.dart';

class DeliveryScreen extends StatefulWidget {
  const DeliveryScreen({super.key});

  @override
  State<DeliveryScreen> createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<DeliveryScreen> {
  MapController? _mapController;

  static const LatLng _deliveryLocation = LatLng(36.20, 37.16);
  static const LatLng _destinationLocation = LatLng(36.205, 37.170);

  @override
  void initState() {
    super.initState();
    _mapController = MapController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            mapController: _mapController,
            options: const MapOptions(
              initialCenter: _deliveryLocation,
              initialZoom: 14.0,
              interactionOptions: InteractionOptions(
                flags: InteractiveFlag.all & ~InteractiveFlag.rotate,
              ),
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.coffee_shop.app',
                maxZoom: 19,
              ),
              PolylineLayer(
                polylines: [
                  Polyline(
                    points: [_deliveryLocation, _destinationLocation],
                    color: AppColors.primaryBrown,
                    strokeWidth: 5.0,
                  ),
                ],
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    point: _deliveryLocation,
                    width: 40,
                    height: 40,
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.primaryBrown,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 3),
                      ),
                      child: const Icon(
                        Icons.location_on,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  Marker(
                    point: _destinationLocation,
                    width: 40,
                    height: 40,
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.primaryBrown,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 3),
                      ),
                      child: const Icon(
                        Icons.location_on,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomAppBarIcon(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      color: AppColors.darkBackground,
                      size: 20,
                    ),
                  ),
                  CustomAppBarIcon(
                    child: SvgPicture.asset(
                      'assets/images/svg/gps.svg',
                      width: 20,
                      height: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),

          const Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: DeliveryInfoPanel(),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _mapController?.dispose();
    super.dispose();
  }
}

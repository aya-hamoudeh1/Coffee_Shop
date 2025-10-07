import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class DetailHeaderSection extends StatelessWidget {
  final String name;
  final String subtitle;
  final double rating;

  const DetailHeaderSection({
    super.key,
    required this.name,
    required this.subtitle,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: AppColors.ratingYellow,
                    size: 20,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    rating.toString(),
                    style: Theme.of(
                      context,
                    ).textTheme.titleLarge?.copyWith(fontSize: 16),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '(230)',
                    style: Theme.of(
                      context,
                    ).textTheme.bodyMedium?.copyWith(color: AppColors.textGray),
                  ),
                ],
              ),
            ],
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildInfoIcon(Icons.bike_scooter_outlined),
            const SizedBox(width: 12),
            _buildInfoIcon(Icons.coffee),
            const SizedBox(width: 12),
            _buildInfoIcon(Icons.macro_off),
          ],
        ),
      ],
    );
  }

  Widget _buildInfoIcon(IconData icon) {
    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(icon, color: AppColors.primaryBrown),
    );
  }
}

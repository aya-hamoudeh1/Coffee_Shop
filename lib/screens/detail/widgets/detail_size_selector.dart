import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class DetailSizeSelector extends StatelessWidget {
  final String selectedSize;
  final Function(String) onSelectSize;

  const DetailSizeSelector({
    super.key,
    required this.selectedSize,
    required this.onSelectSize,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Size',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 16),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(child: _buildSizeButton(context, 'S')),
            const SizedBox(width: 8),
            Expanded(child: _buildSizeButton(context, 'M')),
            const SizedBox(width: 8),
            Expanded(child: _buildSizeButton(context, 'L')),
          ],
        ),
      ],
    );
  }

  Widget _buildSizeButton(BuildContext context, String size) {
    final isSelected = selectedSize == size;
    return GestureDetector(
      onTap: () => onSelectSize(size),
      child: Container(
        height: 43,
        decoration: BoxDecoration(
          color: isSelected
              ? AppColors.primaryBrown.withAlpha(64)
              : Colors.white,
          border: Border.all(
            color: isSelected ? AppColors.primaryBrown : Colors.grey,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            size,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: isSelected
                  ? AppColors.primaryBrown
                  : AppColors.darkBackground,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}

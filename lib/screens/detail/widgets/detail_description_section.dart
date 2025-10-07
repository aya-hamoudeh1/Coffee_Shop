import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class DetailDescriptionSection extends StatelessWidget {
  final bool isExpanded;
  final VoidCallback onToggleExpanded;

  const DetailDescriptionSection({
    super.key,
    required this.isExpanded,
    required this.onToggleExpanded,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 16),
        ),
        const SizedBox(height: 8),
        GestureDetector(
          onTap: onToggleExpanded,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'A cappuccino is an espresso-based drink that originated in Italy, and is traditionally prepared with steamed milk foam and a small amount of steamed milk. It is rich, smooth, and full of flavor, offering a perfect start to your day or a delightful break in the afternoon.',
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(color: AppColors.textGray),
                maxLines: isExpanded ? null : 3,
                overflow: isExpanded
                    ? TextOverflow.visible
                    : TextOverflow.ellipsis,
              ),
              if (!isExpanded)
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Text(
                    'Read More',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: AppColors.primaryBrown,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}

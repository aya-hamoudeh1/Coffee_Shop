import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/app_colors.dart';

class DetailAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isFavorite;
  final VoidCallback onFavoriteToggle;

  const DetailAppBar({
    super.key,
    required this.isFavorite,
    required this.onFavoriteToggle,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Icon(
          Icons.arrow_back_ios_new,
          color: AppColors.darkBackground,
          size: 20,
        ),
      ),
      title: Text(
        'Details',
        style: Theme.of(
          context,
        ).textTheme.titleLarge?.copyWith(color: AppColors.darkBackground),
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsetsDirectional.only(end: 24.0),
          child: GestureDetector(
            onTap: onFavoriteToggle,
            child: SvgPicture.asset(
              'assets/images/svg/black_heart.svg',
              colorFilter: ColorFilter.mode(
                isFavorite ? Colors.red : AppColors.darkBackground,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

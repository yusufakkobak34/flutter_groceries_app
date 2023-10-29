import 'package:flutter/material.dart';
import 'package:flutter_groceries_app/common/color/color_extension.dart';

class SectionView extends StatelessWidget {
  final String title;
  final bool isShowSeeAllButton;
  final VoidCallback onPressed;
  final EdgeInsets? padding;
  const SectionView(
      {super.key,
      required this.title,
      this.isShowSeeAllButton = true,
      required this.onPressed,
      this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: TColor.primaryText,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          TextButton(
            onPressed: onPressed,
            child: Text(
              "Hepsini Gör",
              style: TextStyle(
                color: TColor.primary,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

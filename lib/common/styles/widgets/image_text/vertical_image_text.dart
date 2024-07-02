import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TVerticalImageText extends StatelessWidget {
  const TVerticalImageText({
    super.key,
    required this.title,
    required this.image,
    this.backgroundColor = TColors.white,
    this.textColor = TColors.white,
    this.onTap,
  });

  final String title;
  final String image;
  final Color? backgroundColor;
  final Color textColor;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
        child: Column(
            children: [
          /// Circular Icon
          Container(
            width: 56,
            height: 56,
            padding: const EdgeInsets.all(TSizes.sm),
            decoration: BoxDecoration(
              color: backgroundColor ?? (dark ? TColors.black : TColors.white),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
                child: Image(
              image: AssetImage(image),
              fit: BoxFit.cover,
              color: dark ? TColors.light : TColors.dark,
            )),
          ),

          /// Text
          const SizedBox(height: TSizes.spaceBtwItems / 2),
          SizedBox(
              width: 55,
              child: Text(title,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .apply(color: textColor), textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis)),
        ]),
      ),
    );
  }
}

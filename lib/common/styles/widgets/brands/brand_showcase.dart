import 'package:flutter/material.dart';
import 'package:t_store/common/styles/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/common/styles/widgets/brands/t_brand_card.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      shadowBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      padding: const EdgeInsets.all(TSizes.md),
      child: Column(
        children: [
          /// Brand with products count
          const TBrandCard(showBorder: true),

          /// Brand Top 3 product Images
          Row(
            children:images.map((image) => brandTopProductImageWidget(image, context)).toList(),
          ),
        ],
      ),
    );
  }
}
Widget brandTopProductImageWidget(String image, context){
  final dark = THelperFunctions.isDarkMode(context);
  return Expanded(
    child: TRoundedContainer(
      height: 100,
      backgroundColor: dark ? TColors.darkerGrey : TColors.light,
      margin: const EdgeInsets.only(right: TSizes.sm),
      padding: const EdgeInsets.all(TSizes.md),
      child: const Image(
          image: AssetImage(TImages.nikeAirJordanBlackRed),
          fit: BoxFit.contain),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:t_store/common/styles/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/common/styles/widgets/images/t_circular_image.dart';
import 'package:t_store/common/styles/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key, this.showBorder = true,
  });
  final bool showBorder;
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: (){},
      child: TRoundedContainer(
        padding: const EdgeInsets.all(TSizes.sm),
        shadowBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            /// Icons
            Flexible(child: TCircularImage(image: TImages.nikeLogo, overlayColor: dark ? TColors.white: TColors.black)),
            const SizedBox(width: TSizes.spaceBtwItems / 2),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TBrandTitleWithVerifiedIcon(title: 'Nike', brandTextSize: TextSizes.large,),
                  Text('25 products',overflow: TextOverflow.ellipsis,style: Theme.of(context).textTheme.labelMedium),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:t_store/common/styles/widgets/image_text/vertical_image_text.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return SizedBox(
        height: 80,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 9,
            itemBuilder: (_, index) {
              return TVerticalImageText(
                title: 'Sport',
                image: TImages.furnitureIcon,
                backgroundColor: dark ? TColors.dark : TColors.light,
                overlayColor: dark ? TColors.white : TColors.black,
                onTap: () {},
              );
            }));
  }
}

import 'package:flutter/material.dart';
import 'package:t_store/common/styles/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/common/styles/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_store/common/styles/widgets/texts/section_heading.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header -- Tutorial [Section # 3, Video # 2]
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// AppBar
                   THomeAppBar(),
                   SizedBox(height: TSizes.spaceBtwSections),

                  /// SearchBar
                   TSearchContainer(text: TTexts.searchInStore),
                   SizedBox(height: TSizes.spaceBtwSections),

                  /// Categories
                  Padding(
                    padding:  EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// -- Heading
                         TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: TColors.white,
                        ),
                         SizedBox(height: TSizes.spaceBtwItems),

                        /// -- Categories
                         THomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            /// Body
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(TSizes.md)),
              child: const Image(image: AssetImage(TImages.banner1)),
            )
          ],
        ),
      ),
    );
  }
}


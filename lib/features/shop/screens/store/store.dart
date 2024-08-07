import 'package:flutter/material.dart';
import 'package:t_store/common/styles/widgets/appbar/appbar.dart';
import 'package:t_store/common/styles/widgets/appbar/tabbar.dart';
import 'package:t_store/common/styles/widgets/brands/brand_showcase.dart';
import 'package:t_store/common/styles/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/common/styles/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_store/common/styles/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/styles/widgets/products/cart/cart_menu_icon.dart';
import 'package:t_store/common/styles/widgets/texts/section_heading.dart';
import 'package:t_store/common/styles/widgets/brands/t_brand_card.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        /// -- Appbar
        appBar: TAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            TCartCounterIcon(
              onPressed: () {},
            ),
          ],
        ),
        body: NestedScrollView(
          /// -- Header
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: dark ? TColors.black : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      /// -- Searchbar
                      const SizedBox(height: TSizes.spaceBtwItems),
                      const TSearchContainer(
                          text: 'Search in store',
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero),
                      const SizedBox(height: TSizes.spaceBtwSections),

                      /// -- Feature Brands
                      TSectionHeading(
                          title: 'Featured Brands', onPressed: () {}),
                      const SizedBox(height: TSizes.spaceBtwItems / 1.5),

                      /// Brands Grid
                      TGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 80,
                          itemBuilder: (_, index) {
                            // -- In the backend tutorial we will pass Each brand & onPress event also.
                            return const TBrandCard(
                              showBorder: false,
                            );
                          })
                    ],
                  ),
                ),

                /// -- Tabs
                bottom: const TTabBar(tabs: [
                  Tab(child: Text('Sports')),
                  Tab(child: Text('Furniture')),
                  Tab(child: Text('ُElectronics')),
                  Tab(child: Text('Clothes')),
                  Tab(child: Text('Cosmetics')),
                ]),
              ),
            ];
          },
          body: TabBarView(
            children: [
              Column(
                children: [
                  /// -- Brands
                  TBrandShowcase(images: [TImages.nikeAirJordanBlackRed, TImages.nikeAirJordanOrange, TImages.nikeAirJordanMagenta],),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


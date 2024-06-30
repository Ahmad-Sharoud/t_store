import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:t_store/utils/constants/sizes.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: ()=> Get.back(), icon: const Icon(CupertinoIcons.clear),),
        ],
      ),
      body: const SingleChildScrollView(
        // Padding to give default equal space on all sides in all screen.
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Image

              /// Title & SubTitle

              /// Buttons
            ],
          ),
        ),
      ),
    );
  }
}

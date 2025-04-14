import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rika_online_store/core/utils/app_images.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: Colors.grey.shade300,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide.none,
        ),
        hintText: 'Search',
        prefixIcon: SvgPicture.asset(
          Assets.imagesSearchIcon,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rika_online_store/core/utils/spacing.dart';

import '../../../../../core/utils/app_images.dart';
import '../../../../../core/widgets/custom_search_field.dart';

class SearchArea extends StatelessWidget {
  const SearchArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: CustomSearchField()),
        const HorizontalSpace(width: 10),
        SvgPicture.asset(Assets.imagesFiltterIcon),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:rika_online_store/core/utils/app_styles.dart';
import 'package:rika_online_store/core/utils/spacing.dart';

class OrWidget extends StatelessWidget {
  const OrWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          const Expanded(child: Divider()),
          const HorizontalSpace(width: 10),
          Text("or", style: AppStyles.semiBold14Black),
          const HorizontalSpace(width: 10),
          const Expanded(child: Divider()),
        ],
      ),
    );
  }
}

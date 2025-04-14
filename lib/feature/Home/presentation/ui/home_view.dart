import 'package:flutter/material.dart';
import 'package:rika_online_store/core/utils/spacing.dart';
import 'package:rika_online_store/feature/Home/presentation/ui/widgets/filters_list.dart';
import 'package:rika_online_store/feature/Home/presentation/ui/widgets/home_header.dart';
import 'package:rika_online_store/feature/Home/presentation/ui/widgets/search_area.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    VerticalSpace(height: 20),
                    HomeHeader(),
                    VerticalSpace(height: 20),
                    SearchArea(),
                    VerticalSpace(height: 20),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: FiltersList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

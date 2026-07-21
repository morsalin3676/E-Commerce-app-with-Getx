import 'package:e_commerce1/presentation/ui/widgets/home/home_banner.dart';
import 'package:e_commerce1/presentation/ui/widgets/home/home_app_bar.dart';
import 'package:e_commerce1/presentation/ui/widgets/home/home_search_bar.dart';
import 'package:e_commerce1/presentation/ui/widgets/home/new_section.dart';
import 'package:e_commerce1/presentation/ui/widgets/home/sale_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),

      body: SafeArea(
        child: CustomScrollView(
          slivers: [

            const SliverToBoxAdapter(
              child: HomeAppBar(),
            ),

            const SliverToBoxAdapter(
              child: HomeSearchBar(),
            ),

            SliverToBoxAdapter(
              child: SizedBox(height: 15.h),
            ),

            const SliverToBoxAdapter(
              child: HomeBanner(),
            ),

            SliverToBoxAdapter(
              child: SizedBox(height: 20.h),
            ),

            SliverToBoxAdapter(
              child: SaleSection()
            ),

            SliverToBoxAdapter(
              child: SizedBox(height: 30.h),
            ),

            SliverToBoxAdapter(
              child: NewSection(),
            ),

            SliverToBoxAdapter(
              child: SizedBox(height: 20.h),
            ),
          ],
        ),
      ),
    );
  }
}
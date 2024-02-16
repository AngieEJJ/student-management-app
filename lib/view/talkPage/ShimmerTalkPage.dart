import 'package:flutter/material.dart';
import 'package:home/styles/app_colors.dart';
import 'package:home/widget/BottomNavBar/BottomNavBar.dart';
import 'package:home/widget/FloatingButton/%20FloatingButtonPopup.dart';

import 'package:home/widget/Search/search.dart';
import 'package:home/widget/Shimmer/ShimmerContainer.dart';
import 'package:home/widget/Shimmer/ShimmerTalk.dart';

import 'package:shimmer/shimmer.dart';

class ShimmerTalkPage extends StatelessWidget {
  const ShimmerTalkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const FloatingButtonPopup(),
      body: Column(
        children: [
          const Search(),
          Expanded(
            child: ListView(children: [
              Shimmer.fromColors(
                baseColor: AppColors.neutral_20,
                highlightColor: Colors.white,
                child: Column(children: [
                  ShimmerContainer(
                    height: 18,
                    width: MediaQuery.of(context).size.width * 0.95,
                  ),
                  const ShimmerTalk(),
                  const SizedBox(height: 20),
                  ShimmerContainer(
                    height: 18,
                    width: MediaQuery.of(context).size.width * 0.95,
                  ),
                  const ShimmerTalk(),
                  ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return const ShimmerTalk();
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: 8);
                    },
                    itemCount: 3,
                  ),
                ]),
              )
            ]),
          ),
        ],
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}

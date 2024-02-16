import 'package:flutter/material.dart';

import 'package:home/widget/Shimmer/ShimmerContainer.dart';

class ShimmerCatchup extends StatelessWidget {
  const ShimmerCatchup({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(children: [
        ShimmerContainer(
          height: 200,
          width: MediaQuery.of(context).size.width * 0.94, // 모각코는 0.98
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const ShimmerContainer(height: 10, width: 60),
            SizedBox(width: MediaQuery.of(context).size.width * 0.04)
          ],
        ),
      ]),
    );
  }
}

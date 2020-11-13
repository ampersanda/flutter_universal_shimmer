import 'package:flutter/widgets.dart';
import 'package:shimmer/shimmer.dart';
import 'package:universal_shimmer/colors.dart';

import '../colors.dart';
import '../universal_shimmer.dart';

class CircleShimmer extends StatelessWidget {
  /// Show two dimensional shimmer as a regular placeholder.
  ///
  /// Need to be wrapped with [Shimmer.fromColors]
  const CircleShimmer({Key key, this.size = 20.0}) : super(key: key);

  /// Diameter of shimmer.
  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: Size.square(size),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: ShimmerColors.shimmerFill,
          borderRadius: BorderRadius.all(Radius.circular(size)),
        ),
      ),
    );
  }
}

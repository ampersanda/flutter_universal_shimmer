import 'package:flutter/widgets.dart';
import 'package:universal_shimmer/colors.dart';

class BoxShimmer extends StatelessWidget {
  /// Show two dimensional shimmer as a regular placeholder.
  ///
  /// Need to be wrapped with [Shimmer.fromColors]
  const BoxShimmer({Key key, this.width, this.height = 20.0}) : super(key: key);

  /// Width of shimmer box.
  ///
  /// Defaults using [double.infinity] to expand the shimmer.
  final double width;

  /// Height of shimmer text
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height,
      child: const DecoratedBox(
        decoration: BoxDecoration(color: ShimmerColors.shimmerFill),
      ),
    );
  }
}

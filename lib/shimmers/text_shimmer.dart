import 'package:flutter/widgets.dart';
import 'package:universal_shimmer/colors.dart';
import 'package:universal_shimmer/dimens.dart';

class TextShimmer extends StatelessWidget {
  /// Show two dimensional shimmer as a text placeholder.
  ///
  /// Need to be wrapped with [Shimmer.fromColors]
  const TextShimmer({Key key, this.width, this.height = 20.0})
      : super(key: key);

  /// Width of shimmer text.
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
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(ShimmerDimens.shimmerRadius),
          ),
          color: ShimmerColors.shimmerFill,
        ),
      ),
    );
  }
}

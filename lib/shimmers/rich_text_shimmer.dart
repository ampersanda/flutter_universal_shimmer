import 'package:flutter/widgets.dart';
import 'package:universal_shimmer/shimmers/text_shimmer.dart';

class RichTextShimmer extends StatelessWidget {
  /// Show multiple [TextShimmer].
  ///
  /// Need to be wrapped with [Shimmer.fromColors]
  const RichTextShimmer({Key key, @required this.count, this.gap = 6.0})
      : assert(count != null && count > 1),
        assert(gap >= 0.0),
        super(key: key);

  /// Value need more than 1, consider using [TextShimmer] when one line is all needed
  final int count;
  final double gap;

  @override
  Widget build(BuildContext context) {
    final int countWithGap = (count * 2) - 1;

    return LayoutBuilder(
      builder: (_, BoxConstraints constraints) {
        final double width = constraints.maxWidth;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List<Widget>.generate(countWithGap, (int index) {
            final bool isLastItem = index == countWithGap - 1;

            if (isLastItem) {
              return TextShimmer(width: width * 0.8);
            }

            return index % 2 != 0
                ? SizedBox(height: gap)
                : const TextShimmer(width: double.infinity);
          }),
        );
      },
    );
  }
}

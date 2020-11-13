# universal_shimmer
Universal Shimmer that you can construct like a Lego™

# How to use
1. Add dependencies to `pubspec.yaml`
```yaml
graphql_flutter:
  git:
    url: https://github.com/ampersanda/flutter_universal_shimmer.git/
```

2. In dart file
```dart
Shimmer.fromColors(
  baseColor: ShimmerColors.shimmerBase,
  highlightColor: ShimmerColors.shimmerHighlight,
  child: TextShimmer(),
);
```

Need: https://pub.dev/packages/shimmer package
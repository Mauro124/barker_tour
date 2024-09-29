import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  final bool isSmall;
  final bool isMedium;
  final bool isLarge;
  final bool isHorizontal;

  const Gap.small(
      {super.key, this.isSmall = true, this.isMedium = false, this.isLarge = false, this.isHorizontal = false});
  const Gap.medium(
      {super.key, this.isSmall = false, this.isMedium = true, this.isLarge = false, this.isHorizontal = false});
  const Gap.large(
      {super.key, this.isSmall = false, this.isMedium = false, this.isLarge = true, this.isHorizontal = false});

  @override
  Widget build(BuildContext context) {
    if (isSmall) {
      return SizedBox(
        height: isHorizontal ? 0 : 10,
        width: isHorizontal ? 10 : 0,
      );
    }

    if (isMedium) {
      return SizedBox(
        height: isHorizontal ? 0 : 18,
        width: isHorizontal ? 18 : 0,
      );
    }

    return SizedBox(
      height: isHorizontal ? 0 : 24,
      width: isHorizontal ? 24 : 0,
    );
  }
}

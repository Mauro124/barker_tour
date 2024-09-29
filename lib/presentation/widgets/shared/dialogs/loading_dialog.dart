import 'package:flutter/material.dart';
import 'package:barker_tour/presentation/utils/constants.dart';
import 'package:barker_tour/presentation/utils/extensions/text_style_extensions.dart';
import 'package:barker_tour/presentation/utils/theme.dart';
import 'package:barker_tour/presentation/widgets/shared/gap_widget.dart';
import 'package:barker_tour/presentation/widgets/shared/loading_triangle.dart';

class LoadingDialog extends StatelessWidget {
  final String? message;
  const LoadingDialog({super.key, this.message});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Gap.small(),
          const LoadingTriangle(),
          const Gap.medium(),
          Text(message ?? Texts.loading, style: context.bodyMedium!.copyWith(color: colorScheme.tertiary)),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:barker_tour/presentation/utils/constants.dart';
import 'package:barker_tour/presentation/utils/extensions/button_extensions.dart';
import 'package:barker_tour/presentation/widgets/shared/gap_widget.dart';

class ErrorDialog extends StatelessWidget {
  final String message;
  const ErrorDialog({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(Texts.error),
      content: Text(message),
      actions: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Divider(),
            const Gap.small(),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom().secondary,
              child: const Text(Texts.ok),
            ),
          ],
        ),
      ],
    );
  }
}

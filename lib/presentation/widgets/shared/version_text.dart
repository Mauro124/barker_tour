import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:barker_tour/presentation/utils/constants.dart';
import 'package:barker_tour/presentation/utils/extensions/text_style_extensions.dart';
import 'package:barker_tour/presentation/utils/theme.dart';

class VersionText extends StatelessWidget {
  final Color? color;
  const VersionText({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: PackageInfo.fromPlatform(),
        builder: (context, AsyncSnapshot<PackageInfo> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text('${Texts.version}-');
          }

          return Text.rich(
            TextSpan(
              text: Texts.version,
              style: context.bodySmall!.copyWith(color: color ?? colorScheme.onPrimary),
              children: [
                TextSpan(
                  text: ' ${snapshot.data!.version}',
                  style:
                      context.bodySmall!.copyWith(color: color ?? colorScheme.onPrimary, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        });
  }
}

import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  final Size? size;
  final Color? color;
  bool? isRmPcm = false;
  bool? isLogo = false;

  LogoWidget.rmPcm({
    super.key,
    this.color,
    this.size = const Size(140, 140),
    this.isRmPcm = true,
    this.isLogo = false,
  });

  LogoWidget.logo({
    super.key,
    this.color,
    this.size = const Size(140, 140),
    this.isRmPcm = false,
    this.isLogo = true,
  });

  @override
  Widget build(BuildContext context) {
    String logoRmPath = "resources/images/logo_rm_pcm.png";
    String logoPath = "resources/images/logo.png";

    if (isRmPcm!) {
      return Image.asset(
        logoRmPath,
        width: size!.width,
        height: size!.height,
        color: color,
      );
    }

    if (isLogo!) {
      return Image.asset(
        logoPath,
        width: size!.width,
        height: size!.height,
        color: color,
      );
    }

    return Image.asset(
      logoRmPath,
      width: size!.width,
      height: size!.height,
      color: color,
    );
  }
}

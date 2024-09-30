import 'dart:ui';

import 'package:barker_tour/presentation/navigation/navigator.dart';
import 'package:barker_tour/presentation/utils/constants.dart';
import 'package:barker_tour/presentation/utils/extensions/text_style_extensions.dart';
import 'package:barker_tour/presentation/utils/theme.dart';
import 'package:barker_tour/presentation/widgets/shared/gap_widget.dart';
import 'package:barker_tour/presentation/widgets/shared/transparent_container.dart';
import 'package:flutter/material.dart';
import 'package:soft_edge_blur/soft_edge_blur.dart';
import 'package:video_player/video_player.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late VideoPlayerController videoController;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _initPlayer();
  }

  _initPlayer() {
    videoController = VideoPlayerController.asset(
      Assets.splashVideo,
      videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
    );
    videoController.initialize().then((_) {
      videoController.play();
      videoController.setVolume(0);
      videoController.setLooping(true);
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  void dispose() {
    videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildBackground(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Bienvenido a\nBarker y Villa Cacique',
                  textAlign: TextAlign.center,
                  style: context.titleLarge!.copyWith(
                    color: colorScheme.secondary.withOpacity(0.9),
                  ),
                ),
                const Gap.medium(),
                Text(
                  'Disfruta de tu estadía en un lugar\núnico y lleno de historia',
                  textAlign: TextAlign.center,
                  style: context.bodyMedium!.copyWith(color: colorScheme.secondary),
                ),
                const Gap.large(),
                _buildStartButton(context),
                const Gap.large(),
                Text(
                  'Desarrollado por\nMTC',
                  textAlign: TextAlign.center,
                  style: context.bodySmall!.copyWith(color: colorScheme.tertiary),
                ),
                const Gap.small(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStartButton(BuildContext context) {
    return GestureDetector(
      onTap: () => AppNavigator.goToHome(),
      child: TransparentContainer(
        child: Text(
          'Comencemos',
          textAlign: TextAlign.center,
          style: context.bodyLarge!.bold.copyWith(color: colorScheme.secondary),
        ),
      ),
    );
  }

  Widget _buildBackground() {
    return SoftEdgeBlur(
      edges: [
        EdgeBlur(
          type: EdgeType.topEdge,
          size: 120,
          sigma: 30,
          controlPoints: [
            ControlPoint(
              position: 0.5,
              type: ControlPointType.visible,
            ),
            ControlPoint(
              position: 1,
              type: ControlPointType.transparent,
            )
          ],
        ),
        EdgeBlur(
          type: EdgeType.bottomEdge,
          size: MediaQuery.of(context).size.height / 2,
          sigma: 30,
          controlPoints: [
            ControlPoint(
              position: 0.5,
              type: ControlPointType.visible,
            ),
            ControlPoint(
              position: 1,
              type: ControlPointType.transparent,
            )
          ],
        ),
        EdgeBlur(
          type: EdgeType.leftEdge,
          size: 120,
          sigma: 30,
          controlPoints: [
            ControlPoint(
              position: 0.5,
              type: ControlPointType.visible,
            ),
            ControlPoint(
              position: 1,
              type: ControlPointType.transparent,
            )
          ],
        ),
        EdgeBlur(
          type: EdgeType.rightEdge,
          size: 120,
          sigma: 30,
          controlPoints: [
            ControlPoint(
              position: 0.5,
              type: ControlPointType.visible,
            ),
            ControlPoint(
              position: 1,
              type: ControlPointType.transparent,
            )
          ],
        ),
      ],
      child: videoController.value.isInitialized ? VideoPlayer(videoController) : Container(),
    );
  }
}

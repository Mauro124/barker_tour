import 'package:flutter/material.dart';
import 'package:barker_tour/presentation/utils/theme.dart';

class LoadingTriangle extends StatefulWidget {
  final double? size;
  final Color? color;
  const LoadingTriangle({
    super.key,
    this.size,
    this.color,
  });

  @override
  LoadingTriangleState createState() => LoadingTriangleState();
}

class LoadingTriangleState extends State<LoadingTriangle> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  final Cubic curve = Curves.easeOutQuad;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 3000),
    )..repeat();
  }

  bool _fistVisibility(AnimationController controller) => controller.value <= 0.33;

  bool _secondVisibility(AnimationController controller) => controller.value >= 0.33 && controller.value <= 0.56;

  bool _thirdVisibility(AnimationController controller) => controller.value >= 0.56;

  @override
  Widget build(BuildContext context) {
    final double size = widget.size ?? 48;
    final Color color = widget.color ?? colorScheme.secondary;
    final double innerHeight = 0.74 * size;
    final double innerWidth = 0.87 * size;
    final double storkeWidth = size / 8;
    final CurvedAnimation firstCurvedAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Interval(0.0, 0.23, curve: curve),
    );

    final CurvedAnimation secondCurvedAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Interval(0.33, 0.56, curve: curve),
    );

    final CurvedAnimation thirdCurvedAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Interval(0.66, 0.89, curve: curve),
    );

    final Offset topLeftDotOffset = Offset(
      innerWidth / 4 - (storkeWidth / 2),
      (innerHeight - storkeWidth) / 2,
    );

    final Offset topRightDotOffset = Offset(
      innerWidth * 0.75 - (storkeWidth / 2),
      (innerHeight - storkeWidth) / 2,
    );

    final Offset bottomMiddleDotOffset = Offset(
      (innerWidth - storkeWidth) / 2,
      innerHeight - (storkeWidth / 2),
    );

    return SizedBox(
      width: size,
      height: size,
      // color: Colors.brown,
      child: Center(
        child: SizedBox(
          height: innerHeight,
          width: innerWidth,
          child: AnimatedBuilder(
            animation: _animationController,
            builder: (_, __) => Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Visibility(
                  visible: _fistVisibility(_animationController),
                  child: Triangle.draw(
                    color: color,
                    strokeWidth: storkeWidth,
                    start: Tween<Offset>(
                      begin: Offset(innerWidth, innerHeight),
                      end: Offset(innerWidth / 2, 0),
                    ).animate(firstCurvedAnimation).value,
                    middleLine: MiddleLine(
                      Offset(innerWidth, innerHeight),
                      Offset(0, innerHeight),
                    ),
                    end: Tween<Offset>(
                      begin: Offset(innerWidth / 2, 0),
                      end: Offset(0, innerHeight),
                    ).animate(firstCurvedAnimation).value,
                  ),
                ),
                Visibility(
                  visible: _secondVisibility(_animationController),
                  child: Triangle.draw(
                    color: color,
                    strokeWidth: storkeWidth,
                    start: Tween<Offset>(
                      begin: Offset(innerWidth / 2, 0),
                      end: Offset(0, innerHeight),
                    ).animate(secondCurvedAnimation).value,
                    middleLine: MiddleLine(
                      Offset(innerWidth / 2, 0),
                      Offset(innerWidth, innerHeight),
                    ),
                    end: Tween<Offset>(
                      begin: Offset(0, innerHeight),
                      end: Offset(innerWidth, innerHeight),
                    ).animate(secondCurvedAnimation).value,
                  ),
                ),
                Visibility(
                  visible: _thirdVisibility(_animationController),
                  child: Triangle.draw(
                    color: color,
                    strokeWidth: storkeWidth,
                    start: Tween<Offset>(
                      begin: Offset(0, innerHeight),
                      end: Offset(innerWidth, innerHeight),
                    ).animate(thirdCurvedAnimation).value,
                    middleLine: MiddleLine(
                      Offset(0, innerHeight),
                      Offset(innerWidth / 2, 0),
                    ),
                    end: Tween<Offset>(
                      begin: Offset(innerWidth, innerHeight),
                      end: Offset(innerWidth / 2, 0),
                    ).animate(thirdCurvedAnimation).value,
                  ),
                ),
                SizedBox(
                  // color: Colors.green,
                  width: innerWidth,
                  height: innerHeight,
                  child: Stack(
                    children: <Widget>[
                      Visibility(
                        visible: _fistVisibility(_animationController),
                        child: Transform.translate(
                          offset: Tween<Offset>(begin: topRightDotOffset, end: topLeftDotOffset)
                              .animate(firstCurvedAnimation)
                              .value,
                          child: DrawDot.circular(
                            dotSize: storkeWidth,
                            color: color,
                          ),
                        ),
                      ),
                      Visibility(
                        visible: _secondVisibility(_animationController),
                        child: Transform.translate(
                          offset: Tween<Offset>(begin: topLeftDotOffset, end: bottomMiddleDotOffset)
                              .animate(secondCurvedAnimation)
                              .value,
                          child: DrawDot.circular(
                            dotSize: storkeWidth,
                            color: color,
                          ),
                        ),
                      ),
                      Visibility(
                        visible: _thirdVisibility(_animationController),
                        child: Transform.translate(
                          offset: Tween<Offset>(begin: bottomMiddleDotOffset, end: topRightDotOffset)
                              .animate(thirdCurvedAnimation)
                              .value,
                          child: DrawDot.circular(
                            dotSize: storkeWidth,
                            color: color,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}

class DrawDot extends StatelessWidget {
  final double width;
  final double height;
  final bool circular;
  final Color color;

  const DrawDot.circular({
    super.key,
    required double dotSize,
    required this.color,
  })  : width = dotSize,
        height = dotSize,
        circular = true;

  const DrawDot.elliptical({
    super.key,
    required this.width,
    required this.height,
    required this.color,
  }) : circular = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        shape: circular ? BoxShape.circle : BoxShape.rectangle,
        borderRadius: circular ? null : BorderRadius.all(Radius.elliptical(width, height)),
      ),
    );
  }
}

class Triangle extends CustomPainter {
  final Color _color;
  final double _strokeWidth;
  final Offset _start;
  final Offset _end;
  final MiddleLine _middleLine;

  Triangle._(
    this._color,
    this._strokeWidth,
    this._start,
    this._end,
    this._middleLine,
  );

  static Widget draw({
    required Color color,
    required double strokeWidth,
    required Offset start,
    required Offset end,
    required MiddleLine middleLine,
  }) =>
      CustomPaint(
        painter: Triangle._(
          color,
          strokeWidth,
          start,
          end,
          middleLine,
        ),
      );

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = _color
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      ..strokeWidth = _strokeWidth;

    final Path path = Path()
      // ..moveTo(size.width / 2, 0)
      ..moveTo(_start.dx, _start.dy)
      // ..lineTo(size.width, size.height)
      ..lineTo(_middleLine.startPoint.dx, _middleLine.startPoint.dy)
      // ..lineTo(0, size.height)
      ..lineTo(_middleLine.endPoint.dx, _middleLine.endPoint.dy)
      ..lineTo(_end.dx, _end.dy);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class MiddleLine {
  final Offset startPoint;
  final Offset endPoint;

  MiddleLine(this.startPoint, this.endPoint);
}

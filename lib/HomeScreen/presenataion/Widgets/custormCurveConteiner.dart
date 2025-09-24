import 'package:flutter/material.dart';

class CustomCurveContainer extends StatelessWidget {
  final Widget child;
  final Color color;
  final double width;
  final double height;

  const CustomCurveContainer({
    Key? key,
    required this.child,
    this.color = Colors.blue,
    this.width = 200,
    this.height = 150,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BottomInvertedClipper(),
      child: Container(
        width: width,
        height: height,
        color: color,
        child: child,
      ),
    );
  }
}

class BottomInvertedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 25;
    Path path = Path();

    // Top-left corner
    path.moveTo(0, radius);
    path.quadraticBezierTo(0, 0, radius, 0);

    // Top-right corner
    path.lineTo(size.width - radius, 0);
    path.quadraticBezierTo(size.width, 0, size.width, radius);

    // Right side
    path.lineTo(size.width, size.height - radius);

    // Bottom-right inverted curve
    path.quadraticBezierTo(
        size.width * 0.75, size.height - radius * 2, size.width / 2, size.height);

    // Bottom-left inverted curve
    path.quadraticBezierTo(
        size.width * 0.25, size.height - radius * 2, 0, size.height - radius);

    // Left side
    path.lineTo(0, radius);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

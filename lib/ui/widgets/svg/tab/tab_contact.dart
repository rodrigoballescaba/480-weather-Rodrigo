import 'package:flutter/material.dart';

class RPSCustomPainterTabContact extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.2500000, size.height * 0.7083333);
    path_0.cubicTo(size.width * 0.2500000, size.height * 0.6250000, size.width * 0.4166667, size.height * 0.5791667, size.width * 0.5000000, size.height * 0.5791667);
    path_0.cubicTo(size.width * 0.5833333, size.height * 0.5791667, size.width * 0.7500000, size.height * 0.6250000, size.width * 0.7500000, size.height * 0.7083333);
    path_0.lineTo(size.width * 0.7500000, size.height * 0.7500000);
    path_0.lineTo(size.width * 0.2500000, size.height * 0.7500000);
    path_0.moveTo(size.width * 0.6250000, size.height * 0.3750000);
    path_0.arcToPoint(Offset(size.width * 0.5000000, size.height * 0.5000000),
        radius: Radius.elliptical(size.width * 0.1250000, size.height * 0.1250000), rotation: 0, largeArc: false, clockwise: true,);
    path_0.arcToPoint(Offset(size.width * 0.3750000, size.height * 0.3750000),
        radius: Radius.elliptical(size.width * 0.1250000, size.height * 0.1250000), rotation: 0, largeArc: false, clockwise: true,);
    path_0.arcToPoint(Offset(size.width * 0.5000000, size.height * 0.2500000),
        radius: Radius.elliptical(size.width * 0.1250000, size.height * 0.1250000), rotation: 0, largeArc: false, clockwise: true,);
    path_0.arcToPoint(Offset(size.width * 0.6250000, size.height * 0.3750000),
        radius: Radius.elliptical(size.width * 0.1250000, size.height * 0.1250000), rotation: 0, largeArc: false, clockwise: true,);
    path_0.moveTo(size.width * 0.1250000, size.height * 0.2083333);
    path_0.lineTo(size.width * 0.1250000, size.height * 0.7916667);
    path_0.arcToPoint(Offset(size.width * 0.2083333, size.height * 0.8750000),
        radius: Radius.elliptical(size.width * 0.08333333, size.height * 0.08333333), rotation: 0, largeArc: false, clockwise: false,);
    path_0.lineTo(size.width * 0.7916667, size.height * 0.8750000);
    path_0.arcToPoint(Offset(size.width * 0.8750000, size.height * 0.7916667),
        radius: Radius.elliptical(size.width * 0.08333333, size.height * 0.08333333), rotation: 0, largeArc: false, clockwise: false,);
    path_0.lineTo(size.width * 0.8750000, size.height * 0.2083333);
    path_0.arcToPoint(Offset(size.width * 0.7916667, size.height * 0.1250000),
        radius: Radius.elliptical(size.width * 0.08333333, size.height * 0.08333333), rotation: 0, largeArc: false, clockwise: false,);
    path_0.lineTo(size.width * 0.2083333, size.height * 0.1250000);
    path_0.cubicTo(size.width * 0.1620833, size.height * 0.1250000, size.width * 0.1250000, size.height * 0.1625000, size.width * 0.1250000, size.height * 0.2083333);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xff000000).withOpacity(0.5);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

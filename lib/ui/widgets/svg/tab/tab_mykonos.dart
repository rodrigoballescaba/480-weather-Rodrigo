import 'package:flutter/material.dart';

class RPSCustomPainterTabMykonos extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01764706;
    paint0Stroke.color = const Color(0xffF5F5F5).withOpacity(1.0);
    canvas.drawRRect(
      RRect.fromRectAndCorners(
        Rect.fromLTWH(size.width * 0.008823529, size.height * 0.01250000, size.width * 0.9823529, size.height * 0.9750000),
        bottomRight: Radius.circular(size.width * 0.06176471),
        bottomLeft: Radius.circular(size.width * 0.06176471),
        topLeft: Radius.circular(size.width * 0.06176471),
        topRight: Radius.circular(size.width * 0.06176471),
      ),
      paint0Stroke,
    );

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Colors.white.withOpacity(1.0);
    canvas.drawRRect(
      RRect.fromRectAndCorners(
        Rect.fromLTWH(size.width * 0.008823529, size.height * 0.01250000, size.width * 0.9823529, size.height * 0.9750000),
        bottomRight: Radius.circular(size.width * 0.06176471),
        bottomLeft: Radius.circular(size.width * 0.06176471),
        topLeft: Radius.circular(size.width * 0.06176471),
        topRight: Radius.circular(
          size.width * 0.06176471,
        ),
      ),
      paint0Fill,
    );

    Paint paint1Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01764706;
    paint1Stroke.color = Colors.white.withOpacity(1.0);
    canvas.drawRRect(
      RRect.fromRectAndCorners(
        Rect.fromLTWH(size.width * 0.008823529, size.height * 0.01250000, size.width * 0.9823529, size.height * 0.9750000),
        bottomRight: Radius.circular(size.width * 0.06176471),
        bottomLeft: Radius.circular(size.width * 0.06176471),
        topLeft: Radius.circular(size.width * 0.06176471),
        topRight: Radius.circular(size.width * 0.06176471),
      ),
      paint1Stroke,
    );

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = Colors.white.withOpacity(1.0);
    canvas.drawRRect(
      RRect.fromRectAndCorners(
        Rect.fromLTWH(size.width * 0.008823529, size.height * 0.01250000, size.width * 0.9823529, size.height * 0.9750000),
        bottomRight: Radius.circular(size.width * 0.06176471),
        bottomLeft: Radius.circular(size.width * 0.06176471),
        topLeft: Radius.circular(size.width * 0.06176471),
        topRight: Radius.circular(
          size.width * 0.06176471,
        ),
      ),
      paint1Fill,
    );

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.1904765, 0);
    path_2.lineTo(0, 0);
    path_2.lineTo(0, size.height * 0.2666667);
    path_2.lineTo(size.width * 0.1904765, size.height * 0.2666667);
    path_2.lineTo(size.width * 0.1904765, 0);
    path_2.close();
    path_2.moveTo(size.width * 0.4761876, 0);
    path_2.lineTo(size.width * 0.2857141, 0);
    path_2.lineTo(size.width * 0.2857141, size.height * 0.2666667);
    path_2.lineTo(size.width * 0.4761906, size.height * 0.2666667);
    path_2.lineTo(size.width * 0.4761906, size.height * 0.1333333);
    path_2.lineTo(size.width, size.height * 0.1333333);
    path_2.lineTo(size.width, 0);
    path_2.lineTo(size.width * 0.4761906, 0);
    path_2.lineTo(size.width * 0.4761876, 0);
    path_2.close();
    path_2.moveTo(size.width, size.height * 0.2666750);
    path_2.lineTo(size.width * 0.4761876, size.height * 0.2666750);
    path_2.lineTo(size.width * 0.4761876, size.height * 0.4000000);
    path_2.lineTo(size.width * 0.2857141, size.height * 0.4000000);
    path_2.lineTo(size.width * 0.2857141, size.height * 0.6666667);
    path_2.lineTo(size.width * 0.4761906, size.height * 0.6666667);
    path_2.lineTo(size.width * 0.4761906, size.height * 0.6666583);
    path_2.lineTo(size.width, size.height * 0.6666583);
    path_2.lineTo(size.width, size.height * 0.5333250);
    path_2.lineTo(size.width * 0.4761906, size.height * 0.5333250);
    path_2.lineTo(size.width * 0.4761906, size.height * 0.4000083);
    path_2.lineTo(size.width, size.height * 0.4000083);
    path_2.lineTo(size.width, size.height * 0.2666750);
    path_2.close();
    path_2.moveTo(size.width, size.height * 0.8000000);
    path_2.lineTo(0, size.height * 0.8000000);
    path_2.lineTo(0, size.height * 0.9333333);
    path_2.lineTo(size.width, size.height * 0.9333333);
    path_2.lineTo(size.width, size.height * 0.8000000);
    path_2.close();
    path_2.moveTo(size.width * 0.1904765, size.height * 0.4000000);
    path_2.lineTo(0, size.height * 0.4000000);
    path_2.lineTo(0, size.height * 0.6666667);
    path_2.lineTo(size.width * 0.1904765, size.height * 0.6666667);
    path_2.lineTo(size.width * 0.1904765, size.height * 0.4000000);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xff1C6DC1).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

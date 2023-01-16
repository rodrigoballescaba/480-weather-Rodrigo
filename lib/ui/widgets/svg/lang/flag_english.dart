import 'package:flutter/material.dart';

class RPSCustomPainterFlagEnglish extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Colors.white.withOpacity(1.0);
    canvas.drawRRect(
      RRect.fromRectAndCorners(
        Rect.fromLTWH(0, 0, size.width, size.height),
        bottomRight: Radius.circular(size.width * 0.07058824),
        bottomLeft: Radius.circular(size.width * 0.07058824),
        topLeft: Radius.circular(size.width * 0.07058824),
        topRight: Radius.circular(size.width * 0.07058824),
      ),
      paint0Fill,
    );

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = Colors.white.withOpacity(1.0);
    canvas.drawRRect(
      RRect.fromRectAndCorners(
        Rect.fromLTWH(0, 0, size.width, size.height),
        bottomRight: Radius.circular(size.width * 0.07058824),
        bottomLeft: Radius.circular(size.width * 0.07058824),
        topLeft: Radius.circular(size.width * 0.07058824),
        topRight: Radius.circular(size.width * 0.07058824),
      ),
      paint1Fill,
    );

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xff0A17A7).withOpacity(1.0);
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(0, size.height * 0.6666625);
    path_3.lineTo(size.width * 0.3809524, size.height * 0.6666625);
    path_3.lineTo(size.width * 0.3809524, size.height * 1.066667);
    path_3.lineTo(size.width * 0.6190471, size.height * 1.066667);
    path_3.lineTo(size.width * 0.6190471, size.height * 0.6666625);
    path_3.lineTo(size.width, size.height * 0.6666625);
    path_3.lineTo(size.width, size.height * 0.3333292);
    path_3.lineTo(size.width * 0.6190471, size.height * 0.3333292);
    path_3.lineTo(size.width * 0.6190471, size.height * -0.06667075);
    path_3.lineTo(size.width * 0.3809524, size.height * -0.06667075);
    path_3.lineTo(size.width * 0.3809524, size.height * 0.3333292);
    path_3.lineTo(0, size.height * 0.3333292);
    path_3.lineTo(0, size.height * 0.6666625);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);

    Path path_4 = Path();
    path_4.moveTo(0, size.height * 0.6000000);
    path_4.lineTo(size.width * 0.4285712, size.height * 0.6000000);
    path_4.lineTo(size.width * 0.4285712, size.height);
    path_4.lineTo(size.width * 0.5714288, size.height);
    path_4.lineTo(size.width * 0.5714288, size.height * 0.6000000);
    path_4.lineTo(size.width, size.height * 0.6000000);
    path_4.lineTo(size.width, size.height * 0.4000000);
    path_4.lineTo(size.width * 0.5714288, size.height * 0.4000000);
    path_4.lineTo(size.width * 0.5714288, 0);
    path_4.lineTo(size.width * 0.4285712, 0);
    path_4.lineTo(size.width * 0.4285712, size.height * 0.4000000);
    path_4.lineTo(0, size.height * 0.4000000);
    path_4.lineTo(0, size.height * 0.6000000);
    path_4.close();

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = const Color(0xffE6273E).withOpacity(1.0);
    canvas.drawPath(path_4, paint4Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

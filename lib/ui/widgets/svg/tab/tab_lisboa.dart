import 'package:flutter/material.dart';

class RPSCustomPainterTabLisboa extends CustomPainter {
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
        topRight: Radius.circular(
          size.width * 0.07058824,
        ),
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
        topRight: Radius.circular(
          size.width * 0.07058824,
        ),
      ),
      paint1Fill,
    );

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xffFF2936).withOpacity(1.0);
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(0, size.height);
    path_3.lineTo(size.width * 0.3809524, size.height);
    path_3.lineTo(size.width * 0.3809524, 0);
    path_3.lineTo(0, 0);
    path_3.lineTo(0, size.height);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = const Color(0xff128415).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.3809547, size.height * 0.6666792);
    path_4.cubicTo(size.width * 0.4462847, size.height * 0.6666792, size.width * 0.4997218, size.height * 0.5924308, size.width * 0.4997218, size.height * 0.5000125);
    path_4.cubicTo(size.width * 0.4997218, size.height * 0.4075942, size.width * 0.4462847, size.height * 0.3333458, size.width * 0.3809547, size.height * 0.3333458);
    path_4.cubicTo(size.width * 0.3156241, size.height * 0.3333458, size.width * 0.2621871, size.height * 0.4075942, size.width * 0.2621871, size.height * 0.5000125);
    path_4.cubicTo(size.width * 0.2621871, size.height * 0.5924308, size.width * 0.3156241, size.height * 0.6666792, size.width * 0.3809547, size.height * 0.6666792);
    path_4.close();

    Paint paint4Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.04705882;
    paint4Stroke.color = const Color(0xffFAF94F).withOpacity(1.0);
    canvas.drawPath(path_4, paint4Stroke);

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_4, paint4Fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.3333235, size.height * 0.4166708);
    path_5.cubicTo(size.width * 0.3333235, size.height * 0.4074658, size.width * 0.3385912, size.height * 0.4000042, size.width * 0.3450882, size.height * 0.4000042);
    path_5.lineTo(size.width * 0.4167971, size.height * 0.4000042);
    path_5.cubicTo(size.width * 0.4232947, size.height * 0.4000042, size.width * 0.4285618, size.height * 0.4074658, size.width * 0.4285618, size.height * 0.4166708);
    path_5.lineTo(size.width * 0.4285618, size.height * 0.5333375);
    path_5.cubicTo(size.width * 0.4285618, size.height * 0.5701567, size.width * 0.4074929, size.height * 0.6000042, size.width * 0.3815029, size.height * 0.6000042);
    path_5.lineTo(size.width * 0.3803824, size.height * 0.6000042);
    path_5.cubicTo(size.width * 0.3543929, size.height * 0.6000042, size.width * 0.3333235, size.height * 0.5701567, size.width * 0.3333235, size.height * 0.5333375);
    path_5.lineTo(size.width * 0.3333235, size.height * 0.4166708);
    path_5.close();

    Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_5, paint5Fill);

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.3809582, size.height * 0.5333292);
    path_6.cubicTo(size.width * 0.3941082, size.height * 0.5333292, size.width * 0.4047682, size.height * 0.4850725, size.width * 0.4047682, size.height * 0.4666625);
    path_6.cubicTo(size.width * 0.4047682, size.height * 0.4482533, size.width * 0.3941082, size.height * 0.4333292, size.width * 0.3809582, size.height * 0.4333292);
    path_6.cubicTo(size.width * 0.3678088, size.height * 0.4333292, size.width * 0.3571488, size.height * 0.4482533, size.width * 0.3571488, size.height * 0.4666625);
    path_6.cubicTo(size.width * 0.3571488, size.height * 0.4850725, size.width * 0.3678088, size.height * 0.5333292, size.width * 0.3809582, size.height * 0.5333292);
    path_6.close();

    Paint paint6Fill = Paint()..style = PaintingStyle.fill;
    paint6Fill.color = const Color(0xff1D50B5).withOpacity(1.0);
    canvas.drawPath(path_6, paint6Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

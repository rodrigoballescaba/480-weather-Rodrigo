import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class RPSCustomPainterTabNewYork extends CustomPainter {
  @override
  //ignore:long-method
  void paint(Canvas canvas, Size size) {
    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Colors.white.withOpacity(1.0);
    canvas.drawRRect(
      RRect.fromRectAndCorners(
        Rect.fromLTWH(0, 0, size.width, size.height),
        bottomRight: Radius.circular(size.width * 0.08823529),
        bottomLeft: Radius.circular(size.width * 0.08823529),
        topLeft: Radius.circular(size.width * 0.08823529),
        topRight: Radius.circular(size.width * 0.08823529),
      ),
      paint0Fill,
    );

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = Colors.white.withOpacity(1.0);
    canvas.drawRRect(
      RRect.fromRectAndCorners(
        Rect.fromLTWH(0, 0, size.width, size.height),
        bottomRight: Radius.circular(size.width * 0.08823529),
        bottomLeft: Radius.circular(size.width * 0.08823529),
        topLeft: Radius.circular(size.width * 0.08823529),
        topRight: Radius.circular(
          size.width * 0.08823529,
        ),
      ),
      paint1Fill,
    );

    Path path_2 = Path();
    path_2.moveTo(size.width, 0);
    path_2.lineTo(0, 0);
    path_2.lineTo(0, size.height * 0.06666667);
    path_2.lineTo(size.width, size.height * 0.06666667);
    path_2.lineTo(size.width, 0);
    path_2.close();
    path_2.moveTo(size.width, size.height * 0.1333317);
    path_2.lineTo(0, size.height * 0.1333317);
    path_2.lineTo(0, size.height * 0.1999983);
    path_2.lineTo(size.width, size.height * 0.1999983);
    path_2.lineTo(size.width, size.height * 0.1333317);
    path_2.close();
    path_2.moveTo(0, size.height * 0.2666625);
    path_2.lineTo(size.width, size.height * 0.2666625);
    path_2.lineTo(size.width, size.height * 0.3333292);
    path_2.lineTo(0, size.height * 0.3333292);
    path_2.lineTo(0, size.height * 0.2666625);
    path_2.close();
    path_2.moveTo(size.width, size.height * 0.3999942);
    path_2.lineTo(0, size.height * 0.3999942);
    path_2.lineTo(0, size.height * 0.4666608);
    path_2.lineTo(size.width, size.height * 0.4666608);
    path_2.lineTo(size.width, size.height * 0.3999942);
    path_2.close();
    path_2.moveTo(0, size.height * 0.5333250);
    path_2.lineTo(size.width, size.height * 0.5333250);
    path_2.lineTo(size.width, size.height * 0.5999917);
    path_2.lineTo(0, size.height * 0.5999917);
    path_2.lineTo(0, size.height * 0.5333250);
    path_2.close();
    path_2.moveTo(size.width, size.height * 0.6666567);
    path_2.lineTo(0, size.height * 0.6666567);
    path_2.lineTo(0, size.height * 0.7333233);
    path_2.lineTo(size.width, size.height * 0.7333233);
    path_2.lineTo(size.width, size.height * 0.6666567);
    path_2.close();
    path_2.moveTo(0, size.height * 0.7999875);
    path_2.lineTo(size.width, size.height * 0.7999875);
    path_2.lineTo(size.width, size.height * 0.8666583);
    path_2.lineTo(0, size.height * 0.8666583);
    path_2.lineTo(0, size.height * 0.7999875);
    path_2.close();
    path_2.moveTo(size.width, size.height * 0.9333167);
    path_2.lineTo(0, size.height * 0.9333167);
    path_2.lineTo(0, size.height * 0.9999833);
    path_2.lineTo(size.width, size.height * 0.9999833);
    path_2.lineTo(size.width, size.height * 0.9333167);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xffD02F44).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = const Color(0xff46467F).withOpacity(1.0);
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width * 0.4285712, size.height * 0.4666667), paint3Fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.09524059, size.height * 0.1000042);
    path_4.cubicTo(size.width * 0.09524059, size.height * 0.1184133, size.width * 0.08458118, size.height * 0.1333375, size.width * 0.07143118, size.height * 0.1333375);
    path_4.cubicTo(size.width * 0.05828165, size.height * 0.1333375, size.width * 0.04762176, size.height * 0.1184133, size.width * 0.04762176, size.height * 0.1000042);
    path_4.cubicTo(size.width * 0.04762176, size.height * 0.08159458, size.width * 0.05828165, size.height * 0.06667075, size.width * 0.07143118, size.height * 0.06667075);
    path_4.cubicTo(size.width * 0.08458118, size.height * 0.06667075, size.width * 0.09524059, size.height * 0.08159458, size.width * 0.09524059, size.height * 0.1000042);
    path_4.close();
    path_4.moveTo(size.width * 0.1904771, size.height * 0.1000042);
    path_4.cubicTo(size.width * 0.1904771, size.height * 0.1184133, size.width * 0.1798171, size.height * 0.1333375, size.width * 0.1666676, size.height * 0.1333375);
    path_4.cubicTo(size.width * 0.1535182, size.height * 0.1333375, size.width * 0.1428582, size.height * 0.1184133, size.width * 0.1428582, size.height * 0.1000042);
    path_4.cubicTo(size.width * 0.1428582, size.height * 0.08159458, size.width * 0.1535182, size.height * 0.06667075, size.width * 0.1666676, size.height * 0.06667075);
    path_4.cubicTo(size.width * 0.1798171, size.height * 0.06667075, size.width * 0.1904771, size.height * 0.08159458, size.width * 0.1904771, size.height * 0.1000042);
    path_4.close();
    path_4.moveTo(size.width * 0.2619041, size.height * 0.1333375);
    path_4.cubicTo(size.width * 0.2750535, size.height * 0.1333375, size.width * 0.2857135, size.height * 0.1184133, size.width * 0.2857135, size.height * 0.1000042);
    path_4.cubicTo(size.width * 0.2857135, size.height * 0.08159458, size.width * 0.2750535, size.height * 0.06667075, size.width * 0.2619041, size.height * 0.06667075);
    path_4.cubicTo(size.width * 0.2487547, size.height * 0.06667075, size.width * 0.2380947, size.height * 0.08159458, size.width * 0.2380947, size.height * 0.1000042);
    path_4.cubicTo(size.width * 0.2380947, size.height * 0.1184133, size.width * 0.2487547, size.height * 0.1333375, size.width * 0.2619041, size.height * 0.1333375);
    path_4.close();
    path_4.moveTo(size.width * 0.3809500, size.height * 0.1000042);
    path_4.cubicTo(size.width * 0.3809500, size.height * 0.1184133, size.width * 0.3702900, size.height * 0.1333375, size.width * 0.3571406, size.height * 0.1333375);
    path_4.cubicTo(size.width * 0.3439906, size.height * 0.1333375, size.width * 0.3333312, size.height * 0.1184133, size.width * 0.3333312, size.height * 0.1000042);
    path_4.cubicTo(size.width * 0.3333312, size.height * 0.08159458, size.width * 0.3439906, size.height * 0.06667075, size.width * 0.3571406, size.height * 0.06667075);
    path_4.cubicTo(size.width * 0.3702900, size.height * 0.06667075, size.width * 0.3809500, size.height * 0.08159458, size.width * 0.3809500, size.height * 0.1000042);
    path_4.close();
    path_4.moveTo(size.width * 0.1190494, size.height * 0.2000183);
    path_4.cubicTo(size.width * 0.1321994, size.height * 0.2000183, size.width * 0.1428588, size.height * 0.1850942, size.width * 0.1428588, size.height * 0.1666850);
    path_4.cubicTo(size.width * 0.1428588, size.height * 0.1482758, size.width * 0.1321994, size.height * 0.1333517, size.width * 0.1190494, size.height * 0.1333517);
    path_4.cubicTo(size.width * 0.1059000, size.height * 0.1333517, size.width * 0.09524000, size.height * 0.1482758, size.width * 0.09524000, size.height * 0.1666850);
    path_4.cubicTo(size.width * 0.09524000, size.height * 0.1850942, size.width * 0.1059000, size.height * 0.2000183, size.width * 0.1190494, size.height * 0.2000183);
    path_4.close();
    path_4.moveTo(size.width * 0.2380953, size.height * 0.1666850);
    path_4.cubicTo(size.width * 0.2380953, size.height * 0.1850942, size.width * 0.2274353, size.height * 0.2000183, size.width * 0.2142859, size.height * 0.2000183);
    path_4.cubicTo(size.width * 0.2011365, size.height * 0.2000183, size.width * 0.1904765, size.height * 0.1850942, size.width * 0.1904765, size.height * 0.1666850);
    path_4.cubicTo(size.width * 0.1904765, size.height * 0.1482758, size.width * 0.2011365, size.height * 0.1333517, size.width * 0.2142859, size.height * 0.1333517);
    path_4.cubicTo(size.width * 0.2274353, size.height * 0.1333517, size.width * 0.2380953, size.height * 0.1482758, size.width * 0.2380953, size.height * 0.1666850);
    path_4.close();
    path_4.moveTo(size.width * 0.3095224, size.height * 0.2000183);
    path_4.cubicTo(size.width * 0.3226718, size.height * 0.2000183, size.width * 0.3333318, size.height * 0.1850942, size.width * 0.3333318, size.height * 0.1666850);
    path_4.cubicTo(size.width * 0.3333318, size.height * 0.1482758, size.width * 0.3226718, size.height * 0.1333517, size.width * 0.3095224, size.height * 0.1333517);
    path_4.cubicTo(size.width * 0.2963724, size.height * 0.1333517, size.width * 0.2857129, size.height * 0.1482758, size.width * 0.2857129, size.height * 0.1666850);
    path_4.cubicTo(size.width * 0.2857129, size.height * 0.1850942, size.width * 0.2963724, size.height * 0.2000183, size.width * 0.3095224, size.height * 0.2000183);
    path_4.close();
    path_4.moveTo(size.width * 0.3809500, size.height * 0.2333350);
    path_4.cubicTo(size.width * 0.3809500, size.height * 0.2517450, size.width * 0.3702900, size.height * 0.2666683, size.width * 0.3571406, size.height * 0.2666683);
    path_4.cubicTo(size.width * 0.3439906, size.height * 0.2666683, size.width * 0.3333312, size.height * 0.2517450, size.width * 0.3333312, size.height * 0.2333350);
    path_4.cubicTo(size.width * 0.3333312, size.height * 0.2149258, size.width * 0.3439906, size.height * 0.2000017, size.width * 0.3571406, size.height * 0.2000017);
    path_4.cubicTo(size.width * 0.3702900, size.height * 0.2000017, size.width * 0.3809500, size.height * 0.2149258, size.width * 0.3809500, size.height * 0.2333350);
    path_4.close();
    path_4.moveTo(size.width * 0.2619041, size.height * 0.2666683);
    path_4.cubicTo(size.width * 0.2750535, size.height * 0.2666683, size.width * 0.2857135, size.height * 0.2517450, size.width * 0.2857135, size.height * 0.2333350);
    path_4.cubicTo(size.width * 0.2857135, size.height * 0.2149258, size.width * 0.2750535, size.height * 0.2000017, size.width * 0.2619041, size.height * 0.2000017);
    path_4.cubicTo(size.width * 0.2487547, size.height * 0.2000017, size.width * 0.2380947, size.height * 0.2149258, size.width * 0.2380947, size.height * 0.2333350);
    path_4.cubicTo(size.width * 0.2380947, size.height * 0.2517450, size.width * 0.2487547, size.height * 0.2666683, size.width * 0.2619041, size.height * 0.2666683);
    path_4.close();
    path_4.moveTo(size.width * 0.1904771, size.height * 0.2333350);
    path_4.cubicTo(size.width * 0.1904771, size.height * 0.2517450, size.width * 0.1798171, size.height * 0.2666683, size.width * 0.1666676, size.height * 0.2666683);
    path_4.cubicTo(size.width * 0.1535182, size.height * 0.2666683, size.width * 0.1428582, size.height * 0.2517450, size.width * 0.1428582, size.height * 0.2333350);
    path_4.cubicTo(size.width * 0.1428582, size.height * 0.2149258, size.width * 0.1535182, size.height * 0.2000017, size.width * 0.1666676, size.height * 0.2000017);
    path_4.cubicTo(size.width * 0.1798171, size.height * 0.2000017, size.width * 0.1904771, size.height * 0.2149258, size.width * 0.1904771, size.height * 0.2333350);
    path_4.close();
    path_4.moveTo(size.width * 0.07143118, size.height * 0.2666683);
    path_4.cubicTo(size.width * 0.08458118, size.height * 0.2666683, size.width * 0.09524059, size.height * 0.2517450, size.width * 0.09524059, size.height * 0.2333350);
    path_4.cubicTo(size.width * 0.09524059, size.height * 0.2149258, size.width * 0.08458118, size.height * 0.2000017, size.width * 0.07143118, size.height * 0.2000017);
    path_4.cubicTo(size.width * 0.05828165, size.height * 0.2000017, size.width * 0.04762176, size.height * 0.2149258, size.width * 0.04762176, size.height * 0.2333350);
    path_4.cubicTo(size.width * 0.04762176, size.height * 0.2517450, size.width * 0.05828165, size.height * 0.2666683, size.width * 0.07143118, size.height * 0.2666683);
    path_4.close();
    path_4.moveTo(size.width * 0.1428588, size.height * 0.3000167);
    path_4.cubicTo(size.width * 0.1428588, size.height * 0.3184258, size.width * 0.1321994, size.height * 0.3333492, size.width * 0.1190494, size.height * 0.3333492);
    path_4.cubicTo(size.width * 0.1059000, size.height * 0.3333492, size.width * 0.09524000, size.height * 0.3184258, size.width * 0.09524000, size.height * 0.3000167);
    path_4.cubicTo(size.width * 0.09524000, size.height * 0.2816067, size.width * 0.1059000, size.height * 0.2666833, size.width * 0.1190494, size.height * 0.2666833);
    path_4.cubicTo(size.width * 0.1321994, size.height * 0.2666833, size.width * 0.1428588, size.height * 0.2816067, size.width * 0.1428588, size.height * 0.3000167);
    path_4.close();
    path_4.moveTo(size.width * 0.2142859, size.height * 0.3333492);
    path_4.cubicTo(size.width * 0.2274353, size.height * 0.3333492, size.width * 0.2380953, size.height * 0.3184258, size.width * 0.2380953, size.height * 0.3000167);
    path_4.cubicTo(size.width * 0.2380953, size.height * 0.2816067, size.width * 0.2274353, size.height * 0.2666833, size.width * 0.2142859, size.height * 0.2666833);
    path_4.cubicTo(size.width * 0.2011365, size.height * 0.2666833, size.width * 0.1904765, size.height * 0.2816067, size.width * 0.1904765, size.height * 0.3000167);
    path_4.cubicTo(size.width * 0.1904765, size.height * 0.3184258, size.width * 0.2011365, size.height * 0.3333492, size.width * 0.2142859, size.height * 0.3333492);
    path_4.close();
    path_4.moveTo(size.width * 0.3333318, size.height * 0.3000167);
    path_4.cubicTo(size.width * 0.3333318, size.height * 0.3184258, size.width * 0.3226718, size.height * 0.3333492, size.width * 0.3095224, size.height * 0.3333492);
    path_4.cubicTo(size.width * 0.2963724, size.height * 0.3333492, size.width * 0.2857129, size.height * 0.3184258, size.width * 0.2857129, size.height * 0.3000167);
    path_4.cubicTo(size.width * 0.2857129, size.height * 0.2816067, size.width * 0.2963724, size.height * 0.2666833, size.width * 0.3095224, size.height * 0.2666833);
    path_4.cubicTo(size.width * 0.3226718, size.height * 0.2666833, size.width * 0.3333318, size.height * 0.2816067, size.width * 0.3333318, size.height * 0.3000167);
    path_4.close();
    path_4.moveTo(size.width * 0.3571406, size.height * 0.4000000);
    path_4.cubicTo(size.width * 0.3702900, size.height * 0.4000000, size.width * 0.3809500, size.height * 0.3850758, size.width * 0.3809500, size.height * 0.3666667);
    path_4.cubicTo(size.width * 0.3809500, size.height * 0.3482575, size.width * 0.3702900, size.height * 0.3333333, size.width * 0.3571406, size.height * 0.3333333);
    path_4.cubicTo(size.width * 0.3439906, size.height * 0.3333333, size.width * 0.3333312, size.height * 0.3482575, size.width * 0.3333312, size.height * 0.3666667);
    path_4.cubicTo(size.width * 0.3333312, size.height * 0.3850758, size.width * 0.3439906, size.height * 0.4000000, size.width * 0.3571406, size.height * 0.4000000);
    path_4.close();
    path_4.moveTo(size.width * 0.2857135, size.height * 0.3666667);
    path_4.cubicTo(size.width * 0.2857135, size.height * 0.3850758, size.width * 0.2750535, size.height * 0.4000000, size.width * 0.2619041, size.height * 0.4000000);
    path_4.cubicTo(size.width * 0.2487547, size.height * 0.4000000, size.width * 0.2380947, size.height * 0.3850758, size.width * 0.2380947, size.height * 0.3666667);
    path_4.cubicTo(size.width * 0.2380947, size.height * 0.3482575, size.width * 0.2487547, size.height * 0.3333333, size.width * 0.2619041, size.height * 0.3333333);
    path_4.cubicTo(size.width * 0.2750535, size.height * 0.3333333, size.width * 0.2857135, size.height * 0.3482575, size.width * 0.2857135, size.height * 0.3666667);
    path_4.close();
    path_4.moveTo(size.width * 0.1666676, size.height * 0.4000000);
    path_4.cubicTo(size.width * 0.1798171, size.height * 0.4000000, size.width * 0.1904771, size.height * 0.3850758, size.width * 0.1904771, size.height * 0.3666667);
    path_4.cubicTo(size.width * 0.1904771, size.height * 0.3482575, size.width * 0.1798171, size.height * 0.3333333, size.width * 0.1666676, size.height * 0.3333333);
    path_4.cubicTo(size.width * 0.1535182, size.height * 0.3333333, size.width * 0.1428582, size.height * 0.3482575, size.width * 0.1428582, size.height * 0.3666667);
    path_4.cubicTo(size.width * 0.1428582, size.height * 0.3850758, size.width * 0.1535182, size.height * 0.4000000, size.width * 0.1666676, size.height * 0.4000000);
    path_4.close();
    path_4.moveTo(size.width * 0.09524059, size.height * 0.3666667);
    path_4.cubicTo(size.width * 0.09524059, size.height * 0.3850758, size.width * 0.08458118, size.height * 0.4000000, size.width * 0.07143118, size.height * 0.4000000);
    path_4.cubicTo(size.width * 0.05828165, size.height * 0.4000000, size.width * 0.04762176, size.height * 0.3850758, size.width * 0.04762176, size.height * 0.3666667);
    path_4.cubicTo(size.width * 0.04762176, size.height * 0.3482575, size.width * 0.05828165, size.height * 0.3333333, size.width * 0.07143118, size.height * 0.3333333);
    path_4.cubicTo(size.width * 0.08458118, size.height * 0.3333333, size.width * 0.09524059, size.height * 0.3482575, size.width * 0.09524059, size.height * 0.3666667);
    path_4.close();

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.shader = ui.Gradient.linear(
      Offset(size.width * 4.762176, size.height * 6.667075),
      Offset(size.width * 4.762176, size.height * 0.4000042),
      [Colors.white.withOpacity(1), const Color(0xffF0F0F0).withOpacity(1)],
      [0, 1],
    );
    canvas.drawPath(path_4, paint4Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

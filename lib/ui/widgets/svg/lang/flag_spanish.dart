import 'package:flutter/material.dart';

class RPSCustomPainterFlagSpanish extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0Fill = Paint()..style=PaintingStyle.fill;
    paint0Fill.color = Colors.white.withOpacity(1.0);
    canvas.drawRRect(RRect.fromRectAndCorners(Rect.fromLTWH(0,0,size.width,size.height),bottomRight: Radius.circular(size.width*0.07058824),bottomLeft:  Radius.circular(size.width*0.07058824),topLeft:  Radius.circular(size.width*0.07058824),topRight:  Radius.circular(size.width*0.07058824)),paint0Fill);

    Paint paint1Fill = Paint()..style=PaintingStyle.fill;
    paint1Fill.color = Colors.white.withOpacity(1.0);
    canvas.drawRRect(RRect.fromRectAndCorners(Rect.fromLTWH(0,0,size.width,size.height),bottomRight: Radius.circular(size.width*0.07058824),bottomLeft:  Radius.circular(size.width*0.07058824),topLeft:  Radius.circular(size.width*0.07058824),topRight:  Radius.circular(size.width*0.07058824)),paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(0,size.height*0.2666667);
    path_2.lineTo(size.width,size.height*0.2666667);
    path_2.lineTo(size.width,0);
    path_2.lineTo(0,0);
    path_2.lineTo(0,size.height*0.2666667);
    path_2.close();

    Paint paint2Fill = Paint()..style=PaintingStyle.fill;
    paint2Fill.color = const Color(0xffDD172C).withOpacity(1.0);
    canvas.drawPath(path_2,paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(0,size.height*0.9999917);
    path_3.lineTo(size.width,size.height*0.9999917);
    path_3.lineTo(size.width,size.height*0.7333275);
    path_3.lineTo(0,size.height*0.7333275);
    path_3.lineTo(0,size.height*0.9999917);
    path_3.close();

    Paint paint3Fill = Paint()..style=PaintingStyle.fill;
    paint3Fill.color = const Color(0xffDD172C).withOpacity(1.0);
    canvas.drawPath(path_3,paint3Fill);

    Path path_4 = Path();
    path_4.moveTo(0,size.height*0.7333392);
    path_4.lineTo(size.width,size.height*0.7333392);
    path_4.lineTo(size.width,size.height*0.2666725);
    path_4.lineTo(0,size.height*0.2666725);
    path_4.lineTo(0,size.height*0.7333392);
    path_4.close();

    Paint paint4Fill = Paint()..style=PaintingStyle.fill;
    paint4Fill.color = const Color(0xffFFD133).withOpacity(1.0);
    canvas.drawPath(path_4,paint4Fill);

    Path path_5 = Path();
    path_5.moveTo(size.width*0.2619053,size.height*0.4666708);
    path_5.lineTo(size.width*0.3095247,size.height*0.4666708);
    path_5.lineTo(size.width*0.3095247,size.height*0.5000042);
    path_5.lineTo(size.width*0.2619053,size.height*0.5000042);
    path_5.lineTo(size.width*0.2619053,size.height*0.4666708);
    path_5.close();

    Paint paint5Fill = Paint()..style=PaintingStyle.fill;
    paint5Fill.color = const Color(0xffFFEDB1).withOpacity(1.0);
    canvas.drawPath(path_5,paint5Fill);

    Path path_6 = Path();
    path_6.moveTo(size.width*0.2162524,size.height*0.4680633);
    path_6.cubicTo(size.width*0.2156735,size.height*0.4583400,size.width*0.2210876,size.height*0.4499958,size.width*0.2279753,size.height*0.4499958);
    path_6.lineTo(size.width*0.2958288,size.height*0.4499958);
    path_6.cubicTo(size.width*0.3027165,size.height*0.4499958,size.width*0.3081306,size.height*0.4583400,size.width*0.3075518,size.height*0.4680633);
    path_6.lineTo(size.width*0.3014329,size.height*0.5708642);
    path_6.cubicTo(size.width*0.2998918,size.height*0.5967575,size.width*0.2846065,size.height*0.6166625,size.width*0.2662635,size.height*0.6166625);
    path_6.lineTo(size.width*0.2575406,size.height*0.6166625);
    path_6.cubicTo(size.width*0.2391976,size.height*0.6166625,size.width*0.2239124,size.height*0.5967575,size.width*0.2223712,size.height*0.5708642);
    path_6.lineTo(size.width*0.2162524,size.height*0.4680633);
    path_6.close();

    Paint paint6Stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.02352941;
    paint6Stroke.color=const Color(0xffA41517).withOpacity(1.0);
    canvas.drawPath(path_6,paint6Stroke);

    Paint paint6Fill = Paint()..style=PaintingStyle.fill;
    paint6Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_6,paint6Fill);

    Path path_7 = Path();
    path_7.moveTo(size.width*0.2142835,size.height*0.5000000);
    path_7.lineTo(size.width*0.3095218,size.height*0.5000000);
    path_7.lineTo(size.width*0.3095218,size.height*0.5333333);
    path_7.lineTo(size.width*0.2857124,size.height*0.5333333);
    path_7.lineTo(size.width*0.2619029,size.height*0.6000000);
    path_7.lineTo(size.width*0.2380929,size.height*0.5333333);
    path_7.lineTo(size.width*0.2142835,size.height*0.5333333);
    path_7.lineTo(size.width*0.2142835,size.height*0.5000000);
    path_7.close();

    Paint paint7Fill = Paint()..style=PaintingStyle.fill;
    paint7Fill.color = const Color(0xffA41517).withOpacity(1.0);
    canvas.drawPath(path_7,paint7Fill);

    Paint paint8Fill = Paint()..style=PaintingStyle.fill;
    paint8Fill.color = const Color(0xffA41517).withOpacity(1.0);
    canvas.drawRRect(RRect.fromRectAndCorners(Rect.fromLTWH(size.width*0.1428512,size.height*0.4000042,size.width*0.04761906,size.height*0.2333333),bottomRight: Radius.circular(size.width*0.02352941),bottomLeft:  Radius.circular(size.width*0.02352941),topLeft:  Radius.circular(size.width*0.02352941),topRight:  Radius.circular(size.width*0.02352941)),paint8Fill);

    Paint paint9Fill = Paint()..style=PaintingStyle.fill;
    paint9Fill.color = const Color(0xffA41517).withOpacity(1.0);
    canvas.drawRRect(RRect.fromRectAndCorners(Rect.fromLTWH(size.width*0.3333235,size.height*0.4000042,size.width*0.04761906,size.height*0.2333333),bottomRight: Radius.circular(size.width*0.02352941),bottomLeft:  Radius.circular(size.width*0.02352941),topLeft:  Radius.circular(size.width*0.02352941),topRight:  Radius.circular(size.width*0.02352941)),paint9Fill);

    Path path_10 = Path();
    path_10.moveTo(size.width*0.2142835,size.height*0.3866567);
    path_10.cubicTo(size.width*0.2142835,size.height*0.3572017,size.width*0.2311388,size.height*0.3333233,size.width*0.2519306,size.height*0.3333233);
    path_10.lineTo(size.width*0.2718747,size.height*0.3333233);
    path_10.cubicTo(size.width*0.2926665,size.height*0.3333233,size.width*0.3095218,size.height*0.3572017,size.width*0.3095218,size.height*0.3866567);
    path_10.cubicTo(size.width*0.3095218,size.height*0.3940200,size.width*0.3053082,size.height*0.3999900,size.width*0.3001100,size.height*0.3999900);
    path_10.lineTo(size.width*0.2236953,size.height*0.3999900);
    path_10.cubicTo(size.width*0.2184976,size.height*0.3999900,size.width*0.2142835,size.height*0.3940200,size.width*0.2142835,size.height*0.3866567);
    path_10.close();

    Paint paint10Fill = Paint()..style=PaintingStyle.fill;
    paint10Fill.color = const Color(0xffA41517).withOpacity(1.0);
    canvas.drawPath(path_10,paint10Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

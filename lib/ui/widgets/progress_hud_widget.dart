import 'package:cuatrochenta_weather_rodrigo/theme/colors.dart';
import 'package:flutter/material.dart';

class ProgressHUDWidget extends StatefulWidget {
  final Widget? child;
  final bool? inAsyncCall;

  const ProgressHUDWidget({Key? key, @required this.child, @required this.inAsyncCall}) : super(key: key);

  @override
  State<ProgressHUDWidget> createState() => _ProgressHUDWidgetState();
}

class _ProgressHUDWidgetState extends State<ProgressHUDWidget> with TickerProviderStateMixin {
  AnimationController? _animationController;

  @override
  void dispose() {
    _animationController!.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(duration: const Duration(seconds: 2), vsync: this);
    _animationController!.repeat();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = <Widget>[];
    widgetList.add(widget.child!);
    final modal = Visibility(
      visible: widget.inAsyncCall!,
      child: Stack(
        children: [
          Opacity(
            opacity: 1.0,
            child: ModalBarrier(
              dismissible: false,
              color: blueSuperDark.withOpacity(0.58),
            ),
          ),
          Center(
            child: CircularProgressIndicator(
              strokeWidth: 5.0,
              valueColor: _animationController!.drive(
                ColorTween(begin: blueOriginal, end: orange),
              ),
            ),
          ),
        ],
      ),
    );
    widgetList.add(modal);

    return Stack(
      children: widgetList,
    );
  }
}

import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  final Function? function;
  final double? width;
  final double? height;
  final MaterialStateProperty<Color>? backgroundColor;
  final MaterialStateProperty<Color>? overlayColor;
  final MaterialStateProperty<RoundedRectangleBorder>? shape;
  final Widget? child;

  const ButtonWidget({
    Key? key,
    @required this.function,
    @required this.width,
    @required this.height,
    @required this.backgroundColor,
    @required this.overlayColor,
    @required this.shape,
    @required this.child,
  }) : super(key: key);

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: TextButton(
        onPressed: () {
          widget.function!();
        },
        style: ButtonStyle(
          backgroundColor: widget.backgroundColor,
          overlayColor: widget.overlayColor,
          shape: widget.shape,
        ),
        child: widget.child!,
      ),
    );
  }
}

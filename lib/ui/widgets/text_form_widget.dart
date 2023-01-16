import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFormWidget extends StatefulWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextCapitalization? textCapitalization;
  final int? maxLength;
  final FocusNode? focusNode;
  final Function? onChanged;
  final Function? onEditingComplete;
  final InputDecoration? decoration;
  final TextStyle? style;

  const TextFormWidget({
    Key? key,
    @required this.controller,
    @required this.keyboardType,
    @required this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    @required this.maxLength,
    this.focusNode,
    @required this.onChanged,
    this.onEditingComplete,
    @required this.decoration,
    @required this.style,
  }) : super(key: key);

  @override
  State<TextFormWidget> createState() => _TextFormWidgetState();
}

class _TextFormWidgetState extends State<TextFormWidget> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 26.0.w),
      child: TextFormField(
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        textInputAction: widget.textInputAction,
        textCapitalization: widget.textCapitalization!,
        maxLength: widget.maxLength,
        focusNode: widget.focusNode,
        onChanged: (value) {
          widget.onChanged!(value);
        },
        onEditingComplete: () {
          widget.onEditingComplete!();
        },
        decoration: widget.decoration,
        style: widget.style,
      ),
    );
  }
}

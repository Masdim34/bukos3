// ignore_for_file: unused_element

import 'package:flutter/material.dart';

const _maincolor = Color(0xff62BEC1);
const _hintextcolor = Color(0xffE5E5E5);
const _normalcolor = Color(0xff646464);
const _inputcolor = Color(0xff000000);

class Tfform extends StatefulWidget {
  final String label;
  final String hintText;
  final TextStyle labelStyle;
  final TextStyle hintStyle;
  final TextStyle textStyle;
  final Color borderColor;
  final Color focusedBorderColor;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization;

  const Tfform(
      {super.key,
      required this.label,
      required this.hintText,
      this.labelStyle = const TextStyle(
        color: _inputcolor,
        fontWeight: FontWeight.w500,
        fontSize: 14,
      ),
      this.hintStyle = const TextStyle(
        color: _normalcolor,
      ),
      this.textStyle = const TextStyle(
        color: _inputcolor,
        fontWeight: FontWeight.w300,
      ),
      this.borderColor = Colors.grey,
      this.focusedBorderColor = _maincolor,
      this.keyboardType,
      this.textCapitalization = TextCapitalization.none,
      this.controller});

  @override
  State<Tfform> createState() => _TfformState();
}

class _TfformState extends State<Tfform> {
  final FocusNode _focusNode = FocusNode();
  late TextEditingController _textEditingController;
  bool _isFocused = false;
  void _onfocusChange() {
    _isFocused = _focusNode.hasFocus;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _textEditingController = widget.controller ?? TextEditingController();
    _focusNode.addListener(_onfocusChange);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onfocusChange);
    _focusNode.dispose();
    if (widget.controller == null) {
      _textEditingController.dispose();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: widget.labelStyle,
        ),
        const SizedBox(height: 12),
        TextField(
            textCapitalization: widget.textCapitalization,
            keyboardType: widget.keyboardType,
            controller: _textEditingController,
            focusNode: _focusNode,
            style: widget.textStyle,
            decoration: InputDecoration(
              suffixIconConstraints:
                  const BoxConstraints(maxHeight: 24, maxWidth: 36),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: _isFocused
                      ? widget.focusedBorderColor
                      : widget.borderColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: widget.focusedBorderColor,
                ),
              ),
              focusColor: widget.focusedBorderColor,
              fillColor:
                  _isFocused ? widget.focusedBorderColor : widget.borderColor,
              contentPadding:
                  const EdgeInsets.only(left: 16, bottom: 15, top: 15),
              hintText: widget.hintText,
              hintStyle: widget.hintStyle,
            ))
      ],
    );
  }
}

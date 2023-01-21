import 'package:flutter/material.dart';

import '../../constants/text_strings.dart';

class InputPasswordWidget extends StatefulWidget {
  const InputPasswordWidget({
    Key? key,
    this.controller,
    this.iconVisible = Icons.visibility_outlined,
    this.iconVisibleOff = Icons.visibility_off_outlined,
    this.iconPrefix = Icons.key_outlined,
    this.initialValue,
  }) : super(key: key);
  final TextEditingController? controller;
  final IconData? iconVisible;
  final IconData? iconVisibleOff;
  final IconData? iconPrefix;
  final String? initialValue;

  @override
  State<InputPasswordWidget> createState() => _InputPasswordWidgetState();
}

class _InputPasswordWidgetState extends State<InputPasswordWidget> {
  late bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      initialValue: widget.initialValue,
      obscureText: isObscure,
      decoration: InputDecoration(
        prefixIcon: Icon(widget.iconPrefix),
        labelText: tPassword,
        hintText: tPassword,
        border: const OutlineInputBorder(),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              isObscure = !isObscure;
            });
          },
          icon: Icon( isObscure
              ? widget.iconVisible
              : widget.iconVisible),
        ),
      ),
    );
  }
}





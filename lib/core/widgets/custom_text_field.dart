import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextInputType? inputType;
  final Widget? suffexIcon;
  final ValueSetter? onSaved;
  final ValueSetter? onChange;
  final int? maxLines;

  const CustomTextFormField({
    Key? key,
    @required this.inputType,
    this.suffexIcon,
    @required this.onSaved,
    this.onChange,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      onSaved: onSaved,
      onChanged: onChange,
      maxLines: maxLines,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.transparent,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Color(0xFFCCCCCC),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:testapp/generated/assets.dart';

class CustomTextFormFiled extends StatefulWidget {
  const CustomTextFormFiled({
    super.key,
    this.isPassword = false,
    this.prefixIcon,
    required this.hint,
    this.label,
    required this.textEditingController, this.validator,
  });
  final String? label;
  final bool isPassword;
  final Widget? prefixIcon;
  final String hint;
  final TextEditingController textEditingController;
  final String? Function(String?)? validator;
  @override
  State<CustomTextFormFiled> createState() => _CustomTextFormFiledState();
}

class _CustomTextFormFiledState extends State<CustomTextFormFiled> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.textEditingController,
      validator:widget.validator,
      obscureText: widget.isPassword ? obscureText : false,
      decoration: InputDecoration(
        labelText: widget.label,

        prefixIcon: widget.isPassword
            ? Image.asset(Assets.iconsPasswordIcon)
            : widget.prefixIcon,

        hintText: widget.hint,
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
                icon: obscureText
                    ? Icon(Icons.visibility_off)
                    : Icon(Icons.visibility),
              )
            : null,
      ),
    );
  }
}

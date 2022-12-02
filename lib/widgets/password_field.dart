import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({Key? key, required this.prefixIcon, this.labelText})
      : super(key: key);
  final prefixIcon, labelText;

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: _isObscure,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
        // focusedBorder: OutlineInputBorder(),
        labelText: widget.labelText,
        prefixIcon: widget.prefixIcon,
        suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _isObscure = !_isObscure;
              });
            },
            icon: Icon(_isObscure ? Icons.visibility : Icons.visibility_off)),
      ),
    );
  }
}

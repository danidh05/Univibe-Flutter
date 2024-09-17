import 'package:flutter/material.dart';

class FieldTile extends StatelessWidget {
  final TextEditingController? controller;
  TextInputType? keyboardType;
  String? Function(String?)? validator;
  void Function(String?)? onSaved;
  final String labelText;
  final Widget prefixIcon;
  final int? maxLines;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;

  FieldTile({
    super.key,
    this.controller,
    this.validator,
    this.onSaved,
    this.keyboardType,
    required this.labelText,
    required this.prefixIcon,
    this.maxLines,
    this.onChanged,
    this.onFieldSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        maxLines: maxLines,
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: labelText,
          prefixIcon: prefixIcon,
        ),
        validator: validator,
        onSaved: onSaved,
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,
      ),
    );
  }
}

class FieldPassword extends StatefulWidget {
  const FieldPassword({
    super.key,
  });

  @override
  State<FieldPassword> createState() => _FieldPasswordState();
}

class _FieldPasswordState extends State<FieldPassword> {
  bool obscureText = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        obscureText: obscureText,
        autocorrect: true,
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
          labelText: "password",
          prefixIcon: const Icon(Icons.lock_outline),
          suffixIcon: IconButton(
            icon: Icon(
              !obscureText
                  ? Icons.remove_red_eye_outlined
                  : Icons.visibility_off_outlined,
            ),
            onPressed: () {
              setState(() {
                obscureText = !obscureText;
              });
            },
          ),
        ),
      ),
    );
  }
}

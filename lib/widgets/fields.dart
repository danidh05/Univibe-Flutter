import 'package:flutter/material.dart';

class FieldTile extends StatelessWidget {
  final TextEditingController? controller;
  TextInputType? keyboardType;
  String? Function(String?)? validator;
  void Function(String?)? onSaved;
  final String labelText;
  final Widget? prefixIcon;
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
    this.prefixIcon,
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

class FieldTileColumn extends StatelessWidget {
  final TextEditingController? controller;
  TextInputType? keyboardType;
  String? Function(String?)? validator;
  void Function(String?)? onSaved;
  final String labelText;
  final String? hintText;
  final Widget? prefixIcon;
  final int? maxLines;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;

  FieldTileColumn({
    super.key,
    this.controller,
    this.validator,
    this.onSaved,
    this.keyboardType,
    required this.labelText,
    this.prefixIcon,
    this.maxLines,
    this.onChanged,
    this.onFieldSubmitted,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              labelText,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: TextFormField(
              maxLines: maxLines,
              controller: controller,
              keyboardType: keyboardType,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.fromLTRB(10,5,10,5),
                filled: true,
                fillColor: const Color(0xffC2C2C2),
                prefixIcon: prefixIcon,
                hintText: hintText ?? "",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
              validator: validator,
              onSaved: onSaved,
              onChanged: onChanged,
              onFieldSubmitted: onFieldSubmitted,
            ),
          ),
        ],
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

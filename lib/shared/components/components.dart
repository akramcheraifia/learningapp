import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  double height = 40,
  Color back = Colors.blue,
  required VoidCallback onPressed,
  required String text,
}) {
  return SizedBox(
    width: width,
    height: height,
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: back,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      child: Text(text),
    ),
  );
}

Widget defaultTextformfield({
  // ignore: non_constant_identifier_names
  required TextEditingController Controller,
  required String label,
  required final void Function(String?) onSubmit,
  required final void Function(String?) onChange,
  required TextInputType type,
  required final String? Function(String?) validator,
  bool isPassword = false,
  required IconData prefix,
  IconData? suffix,
}) {
  return TextFormField(
    validator: validator,
    controller: Controller,
    keyboardType: type,
    onFieldSubmitted: onSubmit,
    onChanged: onChange,
    decoration: InputDecoration(
      labelText: label,
      border: const OutlineInputBorder(),
      prefixIcon: Icon(prefix),
      suffixIcon: suffix != null ? Icon(suffix) : null,
    ),
  );
}

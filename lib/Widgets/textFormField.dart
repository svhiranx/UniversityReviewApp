import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String fieldName;
  TextEditingController textEditingController;
  Icon icon;

  CustomTextField(
      {super.key,
      required this.fieldName,
      required this.textEditingController,
      required this.icon});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
          fontWeight: FontWeight.w500, color: Colors.black, fontSize: 15),

      controller: textEditingController,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      autocorrect: false,
      cursorColor: Theme.of(context).primaryColor,
      decoration: InputDecoration(
        filled: true,
        hintText: "Search for colleges, schools ...",
        fillColor: Colors.white,
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            gapPadding: 20,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(16),
          child: icon,
        ),
      ),

      validator: (value) {
        if (value!.trim().isEmpty) {
          return "$fieldName can't be empty";
        }

        return null;
      },
      // onFieldSubmitted: (_) {
      //   email = _emailController.text.trim();
      //   FocusScope.of(context).requestFocus(_passwordFocusNode);
      // },
    );
  }
}

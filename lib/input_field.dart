import 'package:flutter/material.dart';

class InputField extends StatelessWidget{
  final controller,keyboardType,labelText,hintText,prefixIcon,validator;
  const InputField({
    super.key,
    required this.controller,
    required this.keyboardType,
    required this.labelText,
    required this.hintText,
    required this.prefixIcon,
    required this.validator
    });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
                  //hintStyle: TextStyle(color: Colors.white),
                  hintText: hintText,
                  labelText: labelText,
                  prefixIcon: prefixIcon,
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50))
                )
              ),
                validator: validator
            );
  }
}

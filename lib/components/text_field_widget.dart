import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../assets/colors.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String title;

  TextFieldWidget({
    required this.controller,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return                     Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      child: Row(
        children: [
          Text(
            "$title: ",
            style: TextStyle(
              color: MyColors().darkComponent,
              fontSize: 20,
            ),
          ),
          Container(
            width: 50,
            height: 100,
            padding: EdgeInsets.only(bottom: 10),
            child: TextFormField(
              controller: controller,
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              cursorHeight: 20,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]+[,.]{0,1}[0-9]*')),
                TextInputFormatter.withFunction(
                      (oldValue, newValue) => newValue.copyWith(
                    text: newValue.text.replaceAll('.', ','),
                  ),
                ),
              ],
              style: const TextStyle(
                // color: MyColors().darkComponent,
                fontSize: 20,
              ),
              // decoration: InputDecoration(
              //   border: OutlineInputBorder(
              //       borderSide: BorderSide(color: Colors.blue)
              //   ),
              // ),
            ),
          ),
        ],
      ),
    );
  }
}

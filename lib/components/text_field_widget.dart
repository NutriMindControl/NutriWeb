import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../assets/colors.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  final Function onChange;

  TextFieldWidget({
    required this.controller,
    required this.title,
    super.key,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        // Центрирование по вертикали
        children: [
          Text(
            "$title: ",
            style: TextStyle(
              color: MyColors().darkComponent,
              fontSize: 20,
            ),
          ),
          const SizedBox(width: 10),
          // Добавление отступа между текстом и полем ввода
          SizedBox(
            width: 50,
            height: 50, // Уменьшенная высота контейнера для центрирования
            child: TextFormField(
              controller: controller,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              cursorHeight: 20,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(
                    RegExp(r'[0-9]+[,.]{0,1}[0-9]*')),
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
              onChanged: onChange(),
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                    vertical: 10), // Добавление отступа для текстового поля
                // border: OutlineInputBorder(
                //   borderSide: BorderSide(color: Colors.blue),
                // ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

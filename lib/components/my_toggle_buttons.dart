import 'package:flutter/material.dart';
import 'package:sberlab/assets/colors.dart';

class MyToggleButtons extends StatefulWidget {
  final selected;
  final onChanged;

  const MyToggleButtons({super.key, required this.selected, required this.onChanged});

  @override
  State<MyToggleButtons> createState() => _MyToggleButtonsState();
}

class _MyToggleButtonsState extends State<MyToggleButtons> {
  List<bool> get selected => widget.selected;
  void Function(int) get onChanged => widget.onChanged;

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      direction: Axis.horizontal,
      onPressed: (int index) {
        onChanged(index);
      },
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      selectedBorderColor: MyColors().darkComponent,
      selectedColor: MyColors().lightComponent,
      fillColor: MyColors().darkComponent,
      color: MyColors().darkComponent,
      isSelected: selected,
      children: [
        Icon(Icons.male),
        Icon(Icons.female),
      ],
    );
  }
}

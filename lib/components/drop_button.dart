import 'package:flutter/material.dart';
import 'package:sberlab/assets/colors.dart';

class TopDropButton extends StatefulWidget {
  final dropdownValue;
  final list;
  final onChanged;
  final hint;

  const TopDropButton({
    super.key,
    required this.dropdownValue,
    required this.list,
    required this.onChanged,
    required this.hint,
  });

  @override
  State<TopDropButton> createState() => _TopDropButtonState();
}

class _TopDropButtonState extends State<TopDropButton> {
  void Function(String?) get onChanged => widget.onChanged;
  String? get dropdownValue => widget.dropdownValue;
  List<String> get list => widget.list;
  String get hint => widget.hint;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        decoration: BoxDecoration(
          color: MyColors().lightComponent,
          borderRadius: BorderRadius.circular(15)
        ),
        child: DropdownButton<String>(
          value: dropdownValue,
          onChanged: (String? newValue) => onChanged(newValue),
          items: widget.list
              .map<DropdownMenuItem<String>>(
                  (String value) => DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                            value,
                          style: TextStyle(
                            color: MyColors().middleText,
                          ),
                        ),
                      ))
              .toList(),

          // add extra sugar..
          icon: Icon(Icons.keyboard_arrow_down),
          iconSize: 30,
          underline: SizedBox(),
          menuMaxHeight: MediaQuery.of(context).size.height * 0.3,
          borderRadius: BorderRadius.circular(10),
          hint: Text(
              hint,
            style:  TextStyle(
              color: MyColors().darkComponent,
            )
          ),
          style: TextStyle(
            fontSize: 20,
            // color: MyColors().lightText
          ),
            // focusColor: MyColors().lightComponent,
        ),
      ),
    );

    return DropdownMenu<String>(
      onSelected: (String? value) {
        onChanged;
      },
      dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
      hintText: "Age",
        width: 100,

      menuStyle: MenuStyle(
          surfaceTintColor:MaterialStateProperty.resolveWith((states) {
            // If the button is pressed, return green, otherwise blue
            if (states.contains(MaterialState.pressed)) {
              return Colors.green;
            }
            return Colors.blue;
          }),
      ),
    );
  }
}

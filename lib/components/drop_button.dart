import 'package:flutter/material.dart';
import 'package:sberlab/assets/colors.dart';

class TopDropButton extends StatefulWidget {
  final dropdownValue;
  final list;
  final onChanged;
  final hint;
  final width;

  const TopDropButton({
    super.key,
    required this.dropdownValue,
    required this.list,
    required this.onChanged,
    required this.hint,
    required this.width,
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
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        decoration: BoxDecoration(
          color: MyColors().lightComponent,
          borderRadius: BorderRadius.circular(15)
        ),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: widget.width,
          ),
          child: DropdownButton<String>(
            value: dropdownValue,
            isExpanded: true,
            onChanged: (String? newValue) => onChanged(newValue),
            items: widget.list
                .map<DropdownMenuItem<String>>(
                    (String value) => DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                              value,
                            style: TextStyle(
                              fontSize: 15
                            ),
                              overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
            )
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
              fontSize: 15,
              // color: MyColors().lightText
            ),
          ),
        ),
      ),
    );
  }
}

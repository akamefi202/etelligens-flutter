import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox(this.icon, this.label,
      {Key key,
      @required this.onSelect,
      this.selectedBackgroundColor,
      this.notSelectedBackgroundColor,
      this.selectedTextColor,
      this.notSelectedTextColor,
      this.value,
      this.height,
      this.width})
      : super(key: key);

  final IconData icon;
  final String label;
  final bool value;
  final ValueChanged<bool> onSelect;
  final Color selectedBackgroundColor;
  final Color selectedTextColor;
  final Color notSelectedBackgroundColor;
  final Color notSelectedTextColor;
  final double height;
  final double width;

  @override
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool _selected = true;

  void _onTap() {
    setState(() {
      _selected = !_selected;
    });
    widget.onSelect(_selected);
  }

  @override
  void initState() {
    super.initState();

    _selected = (widget.value != null) ? widget.value : false;
    print(widget.value);
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    Color backgroundColor = _selected
        ? (widget.selectedBackgroundColor == null
            ? _theme.primaryColorDark
            : widget.selectedBackgroundColor)
        : (widget.notSelectedBackgroundColor == null
            ? _theme.primaryColorDark
            : widget.notSelectedBackgroundColor);
    Color textColor = _selected
        ? (widget.selectedTextColor == null
            ? Colors.white
            : widget.selectedTextColor)
        : (widget.notSelectedTextColor == null
            ? Colors.white
            : widget.notSelectedTextColor);
    return InkWell(
      onTap: () => _onTap(),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: backgroundColor,
                border: Border.all(color: Color(0xFF979797), width: 1),
                borderRadius: BorderRadius.circular(2.0)),
            width: widget.width == null ? 100 : widget.width,
            height: widget.height == null ? 100 : widget.height,
            child: Icon(
              widget.icon,
              color: Colors.white,
              size: 12,
            ),
          ),
          Expanded(
              child: Container(
            margin: EdgeInsets.only(left: 8),
            child: Text(
              widget.label,
              style: TextStyle(
                  color: textColor, fontWeight: FontWeight.w400, fontSize: 12),
            ),
          )),
        ],
      ),
    );
  }
}

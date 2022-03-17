import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class MySearchTextField extends StatelessWidget {
  MySearchTextField({Key? key}) : super(key: key);
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      textInputAction: TextInputAction.search,
      decoration: _buildInputDecoration(),
    );
  }

  InputDecoration _buildInputDecoration() {
    return InputDecoration(
      contentPadding: MyEdgeInsets.symmetric(h: 10.0, v: 14.0),
      filled: true,
      hintText: 'Qidiring',
      fillColor: MyColors.lightGrey,
      border: _outlineInputBorder(),
      disabledBorder: _outlineInputBorder(),
      enabledBorder: _outlineInputBorder(),
    );
  }

  OutlineInputBorder _outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(getUniqueW(10.0)),
      borderSide: BorderSide.none,
    );
  }
}

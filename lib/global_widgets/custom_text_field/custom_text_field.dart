import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  IconData? prefixIcon;
  IconData? suffixIcon;
  String placeHolder;
  bool isPassword;
  Function? onChange;

  CustomTextField({Key? key,
    this.prefixIcon,
    this.suffixIcon,
    this.placeHolder = "",
    this.isPassword = false,
    this.onChange
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: const BorderRadius.all(Radius.circular(8))
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            child: TextField(
              //controller: searchTextController,
              onChanged: (value) {
                onChange!(value);
              },
              obscureText: isPassword,
              enableSuggestions: !isPassword,
              autocorrect: !isPassword,
              decoration: InputDecoration(
                hintStyle: TextStyle(
                  color: Colors.grey.shade400,
                ),
                border: InputBorder.none,
                fillColor: Colors.transparent,
                filled: true,
                contentPadding: const EdgeInsets.all(13),
                prefixIcon: Icon(
                  prefixIcon,
                  color: Colors.grey.shade400,
                ),
                hintText: placeHolder,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

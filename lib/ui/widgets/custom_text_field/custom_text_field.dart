import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  IconData? prefixIcon;
  IconData? suffixIcon;
  String placeHolder;
  bool isPassword;

  CustomTextField({Key? key,
    this.prefixIcon,
    this.suffixIcon,
    this.placeHolder = "",
    this.isPassword = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8))
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            child: TextField(
              //controller: searchTextController,
              //onChanged: widget.onChange,
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

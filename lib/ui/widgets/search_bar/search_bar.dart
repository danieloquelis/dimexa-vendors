import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SearchBar extends StatefulWidget {
  ValueChanged<String> onChange;
  EdgeInsetsGeometry margin;
  OnClearSearch? onClearSearch;
  OnChangeFilter? onChangeFilter;
  String placeHolder;

  @override
  _SearchBarState createState() => _SearchBarState();

  SearchBar(
      {Key? key,
      required this.onChange,
      this.margin = EdgeInsets.zero,
      this.onClearSearch,
      this.onChangeFilter,
      this.placeHolder = "Search"})
      : super(key: key);
}

class _SearchBarState extends State<SearchBar> {
  _SearchBarState();

  bool isSearching = false;
  late TextEditingController searchTextController;

  @override
  void initState() {
    // TODO: implement initState
    searchTextController = TextEditingController();
    searchTextController.addListener(searchTextChangeListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: widget.margin,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.transparent,
          /*border: Border.all(
              width: 1.0,
              color: Colors.grey.shade400
          ),
          borderRadius: BorderRadius.circular(10),*/
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: TextField(
                controller: searchTextController,
                onChanged: widget.onChange,
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                    color: Colors.grey.shade400,
                  ),
                  border: InputBorder.none,
                  fillColor: Colors.transparent,
                  filled: true,
                  contentPadding: const EdgeInsets.all(13),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey.shade400,
                  ),
                  hintText: widget.placeHolder,
                ),
              ),
            ),
            isSearching
                ? IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      searchTextController.clear();
                      if (widget.onClearSearch != null) {
                        widget.onClearSearch!();
                      }
                    },
                  )
                : IconButton(
                    icon: const Icon(Icons.filter_list),
                    onPressed: () {
                      if (widget.onChangeFilter != null) {
                        widget.onChangeFilter!();
                      }
                    },
                  ),
          ],
        ),
      ),
    );
  }

  void searchTextChangeListener() {
    if (searchTextController.text.isEmpty) {
      if (isSearching) {
        setState(() {
          isSearching = false;
        });
      }
    } else {
      if (!isSearching) {
        setState(() {
          isSearching = true;
        });
      }
    }
  }
}

typedef OnClearSearch = void Function();
typedef OnChangeFilter = void Function();

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../core/consts/colors.dart';
import '../../core/consts/sizes.dart';
import '../../data/models/dashboard_response/dashboard_response.dart';

class TagSearchableDropdown extends StatefulWidget {
  final String label;
  final List<Tags> items;
  final void Function(int)? onItemTapped;
  const TagSearchableDropdown(this.label, this.items,
      {this.onItemTapped, Key? key})
      : super(key: key);

  @override
  _TagSearchableDropdownState createState() => _TagSearchableDropdownState();
}

class _TagSearchableDropdownState extends State<TagSearchableDropdown> {
  String? selectedValue;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(normal),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          DropdownButtonHideUnderline(
            child: DropdownButton2<String>(
              isExpanded: true,
              hint: Text(
                'Select Item',
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).hintColor,
                ),
              ),
              items: widget.items
                  .map((e) => e.tagsName ?? "")
                  .toSet()
                  .toList()
                  .map((item) => DropdownMenuItem(
                        value: item,
                        // onTap: () {
                        //
                        // },
                        child: Text(
                          item ?? "-",
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ))
                  .toList(),
              value: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value as String;
                  if (widget.onItemTapped != null) {
                    widget.onItemTapped!(widget.items
                            .where((element) => element.tagsName == value)
                            .first
                            .tagsId ??
                        0);
                  }
                });
              },
              buttonStyleData: ButtonStyleData(
                  padding: const EdgeInsets.all(normal),
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(titleColorText)),
                      borderRadius: BorderRadius.all(Radius.circular(normal)))),
              dropdownStyleData: const DropdownStyleData(
                maxHeight: 200,
              ),
              menuItemStyleData: const MenuItemStyleData(
                height: 40,
              ),

              dropdownSearchData: DropdownSearchData(
                searchController: textEditingController,
                searchInnerWidgetHeight: 50,
                searchInnerWidget: Container(
                  height: 50,
                  padding: const EdgeInsets.only(
                    top: 8,
                    bottom: 4,
                    right: 8,
                    left: 8,
                  ),
                  child: TextFormField(
                    expands: true,
                    maxLines: null,
                    controller: textEditingController,
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 8,
                      ),
                      hintText: 'Search for an item...',
                      hintStyle: const TextStyle(fontSize: 12),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                searchMatchFn: (item, searchValue) {
                  return (item.value
                      .toString()
                      .toLowerCase()
                      .contains(searchValue.toLowerCase()));
                },
              ),
              //This to clear the search value when you close the menu
              onMenuStateChange: (isOpen) {
                if (!isOpen) {
                  textEditingController.clear();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

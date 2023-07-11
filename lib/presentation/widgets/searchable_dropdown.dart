import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/dashboard_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/consts/colors.dart';
import '../../core/consts/sizes.dart';
import '../../data/models/dashboard_response/dashboard_response.dart';

class SearchableDropdown extends ConsumerStatefulWidget {
  final String? label;
  final String? defaultValue;
  final Set<String> items;
  final void Function(String?)? onItemTapped;
  final ProviderListenable<String?> provider;
  final InputDecoration? decoration;
  final EdgeInsets? contentPadding;
  final String? hintText;
  final double? borderRadius;
  const SearchableDropdown(this.items, this.provider,
      {this.label,
      this.defaultValue,
      this.borderRadius,
      this.onItemTapped,
      this.contentPadding,
      this.decoration,
      this.hintText,
      Key? key})
      : super(key: key);

  @override
  _SearchableDropdownState createState() => _SearchableDropdownState();
}

class _SearchableDropdownState extends ConsumerState<SearchableDropdown> {
  final TextEditingController textEditingController = TextEditingController();
  String? selectedValue;

  @override
  void initState() {
    super.initState();
    // selectedValue = widget.selectedValue;
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    selectedValue = ref.watch(widget.provider);

    return Container(
      // color: Colors.blue,
      margin: const EdgeInsets.symmetric(vertical: normal),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widget.label != null
              ? Text(
                  widget.label!,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                )
              : Container(),
          DropdownButtonHideUnderline(
            child: DropdownButton2<String>(
              isExpanded: true,
              hint: Text(
                widget.hintText ?? 'Select Item',
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).hintColor,
                ),
              ),
              items: widget.items
                  // .map((e) => e.tagsName ?? "")
                  // .toSet()
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
              value: selectedValue ??
                  ((widget.defaultValue != null &&
                          widget.items.contains(widget.defaultValue!))
                      ? widget.defaultValue
                      : null),
              onChanged: (value) {
                // setState(() {
                // selectedValue = value as String;
                if (widget.onItemTapped != null) {
                  widget.onItemTapped!(value);
                }
                // });
              },
              buttonStyleData: ButtonStyleData(
                  // padding: const EdgeInsets.all(normal),
                  // height: 40,
                  // width: 200,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(primaryColor), width: 4),
                      borderRadius: BorderRadius.all(
                          Radius.circular(widget.borderRadius ?? huge)))),
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
                  margin: const EdgeInsets.only(
                    top: 8,
                    bottom: 4,
                    right: 8,
                    left: 8,
                  ),
                  child: TextFormField(
                    expands: true,
                    maxLines: null,
                    controller: textEditingController,
                    decoration:
                        (widget.decoration ?? InputDecoration()).copyWith(
                      // isDense: true,
                      contentPadding: widget.contentPadding
                      // ??
                      // const EdgeInsets.symmetric(
                      //   horizontal: 10,
                      //   vertical: 8,
                      // )
                      ,
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

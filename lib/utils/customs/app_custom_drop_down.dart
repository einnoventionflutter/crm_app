import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:crm_app/utils/customs/app_text/app_text.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppCustomDropdown extends StatelessWidget {
  List<String> options;
  String hinttext;
  Function(String value)? onSelect;
  String initialValue;
  bool isSearchable;
  Key? formKey;
  String? searchText;
  String? selectOptionText;
  IconData headIcon;

  AppCustomDropdown(
      {Key? key,
      required this.options,
      this.hinttext = "Hint text",
      this.onSelect,
      this.initialValue = "",
      this.isSearchable = false,
      this.formKey,
      this.headIcon = Icons.search,
      this.selectOptionText,
      this.searchText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final decoration = CustomDropdownDecoration(
      closedBorder: Border.all(color: Colors.white.withOpacity(0.2)),
      closedBorderRadius: BorderRadius.circular(1),
      expandedBorder: Border.all(color: Colors.white.withOpacity(0.2)),
      expandedBorderRadius: BorderRadius.circular(1),
      closedErrorBorderRadius: BorderRadius.circular(1),
      expandedFillColor: const Color.fromARGB(255, 3, 42, 73),
      closedFillColor: const Color.fromARGB(255, 3, 42, 73),
      headerStyle: const TextStyle(
        color: Colors.white,
      ),
      searchFieldDecoration: SearchFieldDecoration(
        fillColor: const Color.fromARGB(255, 3, 42, 73),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide(
            color: Colors.white.withOpacity(0.2),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide(
            color: Colors.white.withOpacity(0.2),
          ),
        ),
        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
      ),
    );
    return Form(
      key: formKey,
      child: isSearchable
          ? CustomDropdown<String>.search(
              hintText: hinttext,
              items: options,
              initialItem: initialValue.isEmpty ? null : initialValue,
              searchHintText: searchText,
              onChanged: (value) {
                try {
                  onSelect!(value);
                  // ignore: empty_catches
                } catch (e) {}
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return selectOptionText ?? "Please select an option";
                }
                return null;
              },
              closedHeaderPadding:
                  const EdgeInsets.symmetric(vertical: 11, horizontal: 8),
              validateOnChange: false,
              listItemBuilder: (context, item, isSelected, onItemSelect) {
                return AppText.text(
                  item,
                  textAlignment: TextAlign.left,
                  fontsize: 14,
                  fontweight: FontWeight.w400,
                  color: Colors.white,
                );
              },
              decoration: decoration,
            )
          : CustomDropdown<String>(
              hintText: hinttext,
              items: options,
              initialItem: initialValue.isEmpty ? null : initialValue,
              onChanged: (value) {
                try {
                  onSelect!(value);
                  // ignore: empty_catches
                } catch (e) {}
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return selectOptionText ?? "Please select an option";
                }
                return null;
              },
              closedHeaderPadding:
                  const EdgeInsets.symmetric(vertical: 11, horizontal: 8),
              validateOnChange: false,
              listItemBuilder: (context, item, isSelected, onItemSelect) {
                return AppText.text(
                  item,
                  textAlignment: TextAlign.left,
                  fontsize: 14,
                  fontweight: FontWeight.w400,
                  color: Colors.white,
                );
              },
              decoration: decoration,
            ),
    );
  }
}

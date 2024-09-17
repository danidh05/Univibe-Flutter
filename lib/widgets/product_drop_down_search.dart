import 'package:drop_down_search_field/drop_down_search_field.dart';
import 'package:flutter/material.dart';
import 'package:univibeflutter/core/theme/style/color_app.dart';

class ProductDropdownSearch extends StatefulWidget {
  final String lable;
  final List<String> searchFields;
  final TextEditingController controller;
  const ProductDropdownSearch({
    super.key,
    required this.lable,
    required this.searchFields,
    required this.controller,
  });

  @override
  State<ProductDropdownSearch> createState() => _ProductDropdownSearchState();
}

class _ProductDropdownSearchState extends State<ProductDropdownSearch> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: DropDownSearchField<String>(
        hideKeyboard: true,
        textFieldConfiguration: TextFieldConfiguration(
          controller: widget.controller,
          autofocus: false,
          decoration: InputDecoration(
            suffixIcon: Container(
              margin: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: ColorApp.colorText,
                ),
              ),
              child: InkWell(
                onTap: () {
                  widget.controller.clear();
                },
                child: const Icon(
                  Icons.close,
                  size: 16,
                ),
              ),
            ),
            labelText: widget.lable,
          ),
        ),
        suggestionsCallback: (pattern) async {
          List<String> list = [];
          for (var element in widget.searchFields) {
            if (element.toLowerCase().contains(pattern.toLowerCase())) {
              list.add(element);
            }
          }
          if (list.isEmpty) {
            for (var element in widget.searchFields) {
              if (element.toLowerCase().contains(pattern.toLowerCase())) {
                list.add(element);
              }
            }
          }
          return list;
        },
        itemBuilder: (context, suggestion) {
          return Container(
            color: ColorApp.colorSecondary,
            padding: const EdgeInsets.all(10),
            child: Text(suggestion,style: const TextStyle(
              color: Colors.white
            ),),
          );
        },
        onSuggestionSelected: (suggestion) {
          setState(() {
            widget.controller.text = suggestion;
          });
        },
        displayAllSuggestionWhenTap: true, // Required parameter
      ),
    );
  }
}

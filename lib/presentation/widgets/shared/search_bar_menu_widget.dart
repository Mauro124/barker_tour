import 'package:barker_tour/presentation/utils/extensions/text_style_extensions.dart';
import 'package:barker_tour/presentation/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchBarMenuWidget<T> extends ConsumerStatefulWidget {
  final String? initialValue;
  final List<T> values;
  final List<String> alreadySelectedProducts;
  final Function(T) onSelected;
  final String? hintText;
  final bool withoutBorder;
  final bool isLoading;
  final bool hasError;
  final String errorText;

  const SearchBarMenuWidget({
    super.key,
    this.initialValue,
    required this.values,
    required this.alreadySelectedProducts,
    required this.onSelected,
    this.hintText,
    this.withoutBorder = false,
    this.isLoading = false,
    this.hasError = false,
    this.errorText = '',
  });

  const SearchBarMenuWidget.withoutBorder({
    super.key,
    this.initialValue,
    required this.values,
    required this.alreadySelectedProducts,
    required this.onSelected,
    this.hintText,
    this.withoutBorder = true,
    this.isLoading = false,
    this.hasError = false,
    this.errorText = '',
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchProductState<T>();
}

class _SearchProductState<T> extends ConsumerState<SearchBarMenuWidget<T>> {
  List<T> values = [];
  List<T> filteredValues = [];

  @override
  void initState() {
    super.initState();
    values = widget.values;
    filteredValues = values;
  }

  @override
  Widget build(BuildContext context) {
    return SearchAnchor(
      viewOnChanged: _filterValues,
      viewShape: widget.withoutBorder
          ? null
          : RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(kRadiusCornerOutside),
              side: BorderSide(color: colorScheme.outline),
            ),
      dividerColor: Colors.transparent,
      suggestionsBuilder: (context, controller) {
        return filteredValues.map((value) => _buildListTile(controller, value)).toList();
      },
      builder: (context, controller) => _buildSearchBar(context, controller),
    );
  }

  void _filterValues(String value) {
    if (value.isEmpty) {
      filteredValues = values;
    }
    filteredValues = values.where((element) {
      // if (n) {}

      return false;
    }).toList();
  }

  Widget _buildSearchBar(BuildContext context, SearchController controller) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.text = widget.initialValue ?? '';
    });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchBar(
          controller: controller,
          leading: const Icon(PhosphorIcons.magnifying_glass),
          hintText: widget.hintText,
          textStyle: WidgetStateProperty.all<TextStyle>(context.bodyMedium!),
          side: widget.withoutBorder
              ? WidgetStateProperty.all(BorderSide.none)
              : WidgetStateProperty.all<BorderSide>(
                  BorderSide(color: widget.hasError ? Colors.red : colorScheme.outline)),
          shape: widget.withoutBorder
              ? WidgetStateProperty.all<OutlinedBorder>(const RoundedRectangleBorder(side: BorderSide.none))
              : WidgetStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(kRadiusCornerOutside)),
                ),
          constraints: const BoxConstraints(
            minHeight: 48,
            maxHeight: 48,
          ),
          onTap: () {
            controller.openView();
          },
        ),
        if (widget.hasError)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              widget.errorText.toString(),
              style: context.bodySmall!.copyWith(color: Colors.red),
            ),
          ),
      ],
    );
  }

  Widget _buildListTile(SearchController controller, T value) {
    String title = '';
    String subtitle = '';

    // if (value is Employee) {
    //   title = '${value.firstName} ${value.lastName}';
    //   subtitle = value.employeer ?? '';
    // } else if (value is Client) {
    //   title = value.name;
    // } else if (value is Employeer) {
    //   title = value.name;
    // } else if (value is Supervisor) {
    //   title = value.fullName;
    // }

    return ListTile(
      title: Text(title),
      subtitle: subtitle != '' ? Text(subtitle, style: context.bodySmall!.copyWith(color: colorScheme.tertiary)) : null,
      onTap: () => _select(controller, value),
    );
  }

  void _select(SearchController searchController, T value) {
    String selectedText = '';
    // if (value is Employee) {
    //   selectedText = '${value.firstName} ${value.lastName}';
    // } else if (value is Client) {
    //   selectedText = value.name;
    // } else if (value is Employeer) {
    //   selectedText = value.name;
    // } else if (value is Supervisor) {
    //   selectedText = value.fullName;
    // }

    filteredValues = values;
    searchController.closeView(selectedText);
    widget.onSelected(value);
  }
}

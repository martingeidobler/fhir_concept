import 'package:flutter/material.dart';

// Same purpose as the row_item, allowing one place for all UI changes in those blocks
class DataBlock extends StatelessWidget {
  final List<Widget> items;
  final String? title;

  const DataBlock({super.key, required this.items, this.title});

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = [];
    if (title != null) {
      widgetList.add(Text(
        title!,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
        ),
      ));
    }
    widgetList = widgetList + items;
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blueGrey),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widgetList,
          ),
        ),
      ),
    );
  }
}

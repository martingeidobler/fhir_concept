import 'package:flutter/cupertino.dart';

// One place to change the way all DataRows look. Cleaner and easier to do changes
class RowItem extends StatelessWidget {
  final String itemDescriptor;
  final String itemName;
  final double? indent;

  const RowItem(
      {super.key,
      required this.itemDescriptor,
      required this.itemName,
      this.indent});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: indent,
        ),
        SizedBox(
          width: 80,
          child: Text(
            '$itemDescriptor: ',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Flexible(child: Text(itemName)),
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';

class RowItem extends StatelessWidget {
  final String itemDescriptor;
  final String itemName;
  double? indent;

  RowItem(
      {super.key,
      required this.itemDescriptor,
      required this.itemName, this.indent});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: indent,),
        SizedBox(
          width: 80,
          child: Text(
            '$itemDescriptor: ',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Text(itemName),
      ],
    );
  }
}

import 'package:fhir_concept/api/src/data/telecom/telecom.dart';
import 'package:fhir_concept/features/home/helpers.dart';
import 'package:fhir_concept/features/home/widgets/row_item.dart';
import 'package:flutter/cupertino.dart';

class PatientTelecomWidget extends StatelessWidget {
  final List<Telecom> telecomList;

  const PatientTelecomWidget({super.key, required this.telecomList});

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = [];
    int contactCount = 1;
    widgetList.add(const Text("Contact Info(s):"));
    for (Telecom contact in telecomList) {
      if (telecomList.length > 1) {
        widgetList.add(Text('$contactCount:'));
        contactCount++;
      }
      if (contact.use != null) {
        widgetList.add(RowItem(
          itemDescriptor: 'Use',
          itemName: contact.use!,
          indent: 8,
        ));
      }
      if (contact.system != null) {
        widgetList.add(RowItem(
          itemDescriptor: 'System',
          itemName: contact.system!,
          indent: 8,
        ));
      }
      if (contact.value != null) {
        widgetList.add(RowItem(
          itemDescriptor: 'Value',
          itemName: contact.value!,
          indent: 8,
        ));
      }
      if (contact.rank != null) {
        widgetList.add(RowItem(
          itemDescriptor: 'Rank',
          itemName: contact.rank!.toString(),
          indent: 8,
        ));
      }
      if (contact.period != null) {
        widgetList.add(RowItem(
          itemDescriptor: 'Period',
          itemName: Helpers.periodHelper(contact.period!),
          indent: 8,
        ));
      }
      widgetList.add(const SizedBox(
        height: 4,
      ));
    }
    widgetList.add(const SizedBox(
      height: 4,
    ));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widgetList,
    );
  }
}

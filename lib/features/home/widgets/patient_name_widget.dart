import 'package:fhir_concept/api/src/data/patient_name/name.dart';
import 'package:fhir_concept/features/home/helpers.dart';
import 'package:fhir_concept/features/home/widgets/row_item.dart';
import 'package:flutter/cupertino.dart';

class PatientNameWidget extends StatelessWidget {
  final List<Name> nameList;

  const PatientNameWidget({super.key, required this.nameList});

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = [];
    int nameCount = 1;
    widgetList.add(const Text("Name(s):"));
    for (Name name in nameList) {
      if (nameList.length > 1) {
        widgetList.add(Text('$nameCount:'));
        nameCount++;
      }
      if (name.use != null) {
        widgetList.add(RowItem(
          itemDescriptor: 'Use',
          itemName: name.use!,
          indent: 8,
        ));
      }
      if (name.family != null) {
        widgetList.add(RowItem(
          itemDescriptor: 'Family',
          itemName: name.family!,
          indent: 8,
        ));
      }
      if (name.given != null) {
        String names = '';
        for (String nameItem in name.given!) {
          names += '$nameItem ';
        }
        widgetList.add(RowItem(
          itemDescriptor: 'Given',
          itemName: names,
          indent: 8,
        ));
      }
      if (name.suffix != null) {
        String suffixItems = '';
        for (String suffixItem in name.suffix!) {
          suffixItems += '$suffixItem ';
        }
        widgetList.add(RowItem(
          itemDescriptor: 'Suffix',
          itemName: suffixItems,
          indent: 8,
        ));
      }
      if (name.prefix != null) {
        String prefixItems = '';
        for (String prefixItem in name.prefix!) {
          prefixItems += '$prefixItem ';
        }
        widgetList.add(RowItem(
          itemDescriptor: 'Prefix',
          itemName: prefixItems,
          indent: 8,
        ));
      }
      if (name.period != null) {
        widgetList.add(RowItem(
          itemDescriptor: 'Period',
          itemName: Helpers.periodHelper(name.period!),
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

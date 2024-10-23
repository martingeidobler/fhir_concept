import 'package:fhir_concept/api/src/data/address/address.dart';
import 'package:fhir_concept/api/src/data/telecom/telecom.dart';
import 'package:fhir_concept/features/home/helpers.dart';
import 'package:fhir_concept/features/home/widgets/row_item.dart';
import 'package:flutter/cupertino.dart';

class PatientAddressWidget extends StatelessWidget {
  final List<Address> addressList;

  const PatientAddressWidget({super.key, required this.addressList});

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = [];
    int addressCount = 1;
    widgetList.add(const Text("Address(es):"));
    for (Address address in addressList) {
      if (addressList.length > 1) {
        widgetList.add(Text('$addressCount:'));
        addressCount++;
      }
      if (address.use != null) {
        widgetList.add(RowItem(
          itemDescriptor: 'Use',
          itemName: address.use!,
          indent: 8,
        ));
      }
      if (address.text != null) {
        widgetList.add(RowItem(
          itemDescriptor: 'Address',
          itemName: address.text!,
          indent: 8,
        ));
      } else {
        if (address.line != null) {
          String lineString = '';
          for (String singleLine in address.line!) {
            lineString += '$singleLine ';
          }
          widgetList.add(RowItem(
            itemDescriptor: 'Line',
            itemName: lineString,
            indent: 8,
          ));
        }
        if (address.city != null) {
          widgetList.add(RowItem(
            itemDescriptor: 'City',
            itemName: address.city!,
            indent: 8,
          ));
        }
        if (address.postalCode != null) {
          widgetList.add(RowItem(
            itemDescriptor: 'Zip Code',
            itemName: address.postalCode!,
            indent: 8,
          ));
        }
        if (address.country != null) {
          widgetList.add(RowItem(
            itemDescriptor: 'Country',
            itemName: address.country!,
            indent: 8,
          ));
        }
        if (address.district != null) {
          widgetList.add(RowItem(
            itemDescriptor: 'District',
            itemName: address.district!,
            indent: 8,
          ));
        }
        if (address.state != null) {
          widgetList.add(RowItem(
            itemDescriptor: 'State',
            itemName: address.state!,
            indent: 8,
          ));
        }
      }
      if (address.type != null) {
        widgetList.add(RowItem(
          itemDescriptor: 'Type',
          itemName: address.type!,
          indent: 8,
        ));
      }
      if (address.period != null) {
        String period = Helpers.periodHelper(address.period!);
        widgetList.add(RowItem(
          itemDescriptor: 'Period',
          itemName: period,
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

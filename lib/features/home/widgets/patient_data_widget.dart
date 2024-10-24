import 'package:fhir_concept/api/src/data/patient_data/patient_data.dart';
import 'package:fhir_concept/features/home/widgets/patient_address_widget.dart';
import 'package:fhir_concept/features/home/widgets/patient_name_widget.dart';
import 'package:fhir_concept/features/home/widgets/patient_telecom_widget.dart';
import 'package:fhir_concept/features/home/widgets/shared_widgets/row_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PatientDataWidget extends StatelessWidget {
  const PatientDataWidget({super.key, required this.data, required this.resetButton});

  final PatientData data;
  final ElevatedButton resetButton;

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = [];

    if (data.resourceType != null) {
      widgetList.add(
          RowItem(itemDescriptor: 'Resource', itemName: data.resourceType!));
    }
    widgetList.add(const SizedBox(height: 8));
    if (data.name != null) {
      widgetList.add(PatientNameWidget(nameList: data.name!));
    }
    widgetList.add(const SizedBox(height: 8));
    if (data.id != null) {
      widgetList.add(RowItem(itemDescriptor: 'id', itemName: data.id!));
    }
    if (data.gender != null) {
      widgetList.add(
          RowItem(itemDescriptor: 'Gender', itemName: data.gender.toString()));
    }
    if (data.birthDate != null) {
      widgetList.add(RowItem(
          itemDescriptor: 'DOB',
          itemName: DateFormat('dd.MM.yyyy').format(data.birthDate!)));
    }
    if (data.deceased != null) {
      widgetList.add(RowItem(
          itemDescriptor: 'Deceased', itemName: data.deceased.toString()));
    }
    if (data.deceasedDateTime != null) {
      widgetList.add(RowItem(
          itemDescriptor: 'TOD', itemName: data.deceasedDateTime.toString()));
    }
    widgetList.add(const SizedBox(height: 8));
    if (data.telecom != null) {
      widgetList.add(PatientTelecomWidget(telecomList: data.telecom!));
    }
    if (data.address != null) {
      widgetList.add(PatientAddressWidget(addressList: data.address!));
    }

    widgetList.add(resetButton);


    return Expanded(
      child: SingleChildScrollView(
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

import 'package:json_annotation/json_annotation.dart';
part 'managing_organization.g.dart';

@JsonSerializable()
class ManagingOrganization{
  final Map<String, String>? reference;

  const ManagingOrganization({
    this.reference,
  });

  factory ManagingOrganization.fromJson(Map<String, dynamic> json) => _$ManagingOrganizationFromJson(json);
  Map<String, dynamic> toJson() => _$ManagingOrganizationToJson(this);

}
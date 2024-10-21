import 'package:json_annotation/json_annotation.dart';
part 'address.g.dart';

@JsonSerializable()
class Address {
  final String use;
  final List<String> line;
  final String city;
  final String postalCode;
  final String country;

  const Address({
    required this.city,
    required this.country,
    required this.line,
    required this.postalCode,
    required this.use
  });

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
  Map<String, dynamic> toJson() => _$AddressToJson(this);

}
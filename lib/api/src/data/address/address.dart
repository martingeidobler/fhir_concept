import 'package:json_annotation/json_annotation.dart';
part 'address.g.dart';

@JsonSerializable()
class Address {
  final String? use;
  final List<String>? line;
  final String? city;
  final String? postalCode;
  final String? country;
  final String? type;
  final String? text;
  final String? district;
  final String? state;
  final Map<String, String>? period;

  const Address({
    required this.city,
    required this.country,
    required this.line,
    required this.postalCode,
    required this.use,
    required this.period,
    required this.state,
    required this.district,
    required this.text,
    required this.type
  });

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
  Map<String, dynamic> toJson() => _$AddressToJson(this);

}
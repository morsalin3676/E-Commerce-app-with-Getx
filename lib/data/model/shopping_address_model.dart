class ShippingAddressModel {
  final int? id;
  final String fullName;
  final String address;
  final String city;
  final String state;
  final String zipCode;
  final String country;
  bool isDefault;

  ShippingAddressModel({
    this.id,
    required this.fullName,
    required this.address,
    required this.city,
    required this.state,
    required this.zipCode,
    required this.country,
    this.isDefault = false,
  });

  factory ShippingAddressModel.fromJson(
      Map<String, dynamic> json) {
    return ShippingAddressModel(
      id: json["id"],
      fullName: json["full_name"],
      address: json["address"],
      city: json["city"],
      state: json["state"],
      zipCode: json["zip_code"],
      country: json["country"],
      isDefault: json["is_default"] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "full_name": fullName,
      "address": address,
      "city": city,
      "state": state,
      "zip_code": zipCode,
      "country": country,
      "is_default": isDefault,
    };
  }
}
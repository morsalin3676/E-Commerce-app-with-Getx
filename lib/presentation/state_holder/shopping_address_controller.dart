import 'package:e_commerce1/data/model/shopping_address_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ShippingAddressController extends GetxController {

  final formKey = GlobalKey<FormState>();

  final fullNameTEController = TextEditingController();
  final addressTEController = TextEditingController();
  final cityTEController = TextEditingController();
  final stateTEController = TextEditingController();
  final zipTEController = TextEditingController();

  String selectedCountry = "United States";

  List<ShippingAddressModel> addressList = [];

  bool inProgress = false;

  void changeCountry(String value) {
    selectedCountry = value;
    update();
  }

  void saveAddress() {

    if (!formKey.currentState!.validate()) {
      return;
    }

    addressList.add(
      ShippingAddressModel(
        fullName: fullNameTEController.text.trim(),
        address: addressTEController.text.trim(),
        city: cityTEController.text.trim(),
        state: stateTEController.text.trim(),
        zipCode: zipTEController.text.trim(),
        country: selectedCountry,
      ),
    );

    clearForm();

    Get.back();

    update();
  }

  void clearForm() {

    fullNameTEController.clear();
    addressTEController.clear();
    cityTEController.clear();
    stateTEController.clear();
    zipTEController.clear();

    selectedCountry = "United States";
  }

  void setDefaultAddress(int index) {

    for (var item in addressList) {
      item.isDefault = false;
    }

    addressList[index].isDefault = true;

    update();
  }

  @override
  void onClose() {

    fullNameTEController.dispose();
    addressTEController.dispose();
    cityTEController.dispose();
    stateTEController.dispose();
    zipTEController.dispose();

    super.onClose();
  }
}
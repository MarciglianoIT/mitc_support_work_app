// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String FirstNameValueKey = 'firstName';
const String LastNameValueKey = 'lastName';
const String CompanyNameValueKey = 'companyName';
const String AddressStreetValueKey = 'addressStreet';
const String AddressZipValueKey = 'addressZip';
const String AddressCityValueKey = 'addressCity';

mixin $ProfileView on StatelessWidget {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController companyNameController = TextEditingController();
  final TextEditingController addressStreetController = TextEditingController();
  final TextEditingController addressZipController = TextEditingController();
  final TextEditingController addressCityController = TextEditingController();
  final FocusNode firstNameFocusNode = FocusNode();
  final FocusNode lastNameFocusNode = FocusNode();
  final FocusNode companyNameFocusNode = FocusNode();
  final FocusNode addressStreetFocusNode = FocusNode();
  final FocusNode addressZipFocusNode = FocusNode();
  final FocusNode addressCityFocusNode = FocusNode();

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    firstNameController.addListener(() => _updateFormData(model));
    lastNameController.addListener(() => _updateFormData(model));
    companyNameController.addListener(() => _updateFormData(model));
    addressStreetController.addListener(() => _updateFormData(model));
    addressZipController.addListener(() => _updateFormData(model));
    addressCityController.addListener(() => _updateFormData(model));
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model) => model.setData(
        model.formValueMap
          ..addAll({
            FirstNameValueKey: firstNameController.text,
            LastNameValueKey: lastNameController.text,
            CompanyNameValueKey: companyNameController.text,
            AddressStreetValueKey: addressStreetController.text,
            AddressZipValueKey: addressZipController.text,
            AddressCityValueKey: addressCityController.text,
          }),
      );

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    firstNameController.dispose();
    firstNameFocusNode.dispose();
    lastNameController.dispose();
    lastNameFocusNode.dispose();
    companyNameController.dispose();
    companyNameFocusNode.dispose();
    addressStreetController.dispose();
    addressStreetFocusNode.dispose();
    addressZipController.dispose();
    addressZipFocusNode.dispose();
    addressCityController.dispose();
    addressCityFocusNode.dispose();
  }
}

extension ValueProperties on FormViewModel {
  String? get firstNameValue => this.formValueMap[FirstNameValueKey];
  String? get lastNameValue => this.formValueMap[LastNameValueKey];
  String? get companyNameValue => this.formValueMap[CompanyNameValueKey];
  String? get addressStreetValue => this.formValueMap[AddressStreetValueKey];
  String? get addressZipValue => this.formValueMap[AddressZipValueKey];
  String? get addressCityValue => this.formValueMap[AddressCityValueKey];

  bool get hasFirstName => this.formValueMap.containsKey(FirstNameValueKey);
  bool get hasLastName => this.formValueMap.containsKey(LastNameValueKey);
  bool get hasCompanyName => this.formValueMap.containsKey(CompanyNameValueKey);
  bool get hasAddressStreet =>
      this.formValueMap.containsKey(AddressStreetValueKey);
  bool get hasAddressZip => this.formValueMap.containsKey(AddressZipValueKey);
  bool get hasAddressCity => this.formValueMap.containsKey(AddressCityValueKey);
}

extension Methods on FormViewModel {}

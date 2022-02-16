import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mitc_support_work_app/ui/dumb_widgets/userdata_layout.dart';
import 'package:mitc_support_work_app/widgets/buttons/gesture_botton.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../../shared/app_colors.dart';
import '../../shared/ui_helpers.dart';
import '../../widgets/custom_app_bar.dart';
import 'profile_view.form.dart';
import 'profile_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'firstName'),
  FormTextField(name: 'lastName'),
  FormTextField(name: 'companyName'),
  FormTextField(name: 'addressStreet'),
  FormTextField(name: 'addressZip'),
  FormTextField(name: 'addressCity'),
])
class ProfileView extends StatelessWidget with $ProfileView {
  ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.reactive(
      onModelReady: (model) => listenToFormUpdated(model),
      builder: (context, model, child) => Scaffold(
        appBar: CustomAppBar(title: model.title),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                UserdataLayout(
                  busy: model.isBusy,
                  onMainButtonTapped: model.saveData,
                  validationMessage: model.validationMessage,
                  mainButtonTitle: 'Edit',
                  form: Column(
                    children: [
                      TextField(
                        decoration:
                            const InputDecoration(labelText: 'First Name'),
                        controller: firstNameController,
                      ),
                      TextField(
                        decoration:
                            const InputDecoration(labelText: 'Last Name'),
                        controller: lastNameController,
                      ),
                      TextField(
                        decoration: const InputDecoration(labelText: 'Company'),
                        controller: companyNameController,
                      ),
                      TextField(
                        decoration: const InputDecoration(labelText: 'Street'),
                        controller: addressStreetController,
                      ),
                      TextField(
                        decoration: const InputDecoration(labelText: 'Zip'),
                        controller: addressZipController,
                      ),
                      TextField(
                        decoration: const InputDecoration(labelText: 'City'),
                        controller: addressCityController,
                      ),
                    ],
                  ),
                ),
                GestureButton(
                  onTap: model.logOut,
                  color: kcAction,
                  isBusy: model.isBusy,
                  text: "Logout",
                ),
                verticalSpaceRegular,
                GestureButton(
                  onTap: model.deleteAccount,
                  isBusy: model.isBusy,
                  text: "Delete Account",
                  color: kcDanger,
                ),
                verticalSpaceRegular,
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => ProfileViewModel(),
    );
  }
}

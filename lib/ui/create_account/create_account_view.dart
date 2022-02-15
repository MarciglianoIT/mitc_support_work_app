import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../../widgets/custom_app_bar.dart';
import '../dumb_widgets/authentication_layout.dart';
import 'create_account_view.form.dart';
import 'create_account_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'email'),
  FormTextField(name: 'password', isPassword: true),
])
class CreateAccountView extends StatelessWidget with $CreateAccountView {
  CreateAccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CreateAccountViewModel>.reactive(
      onModelReady: (model) => listenToFormUpdated(model),
      builder: (context, model, child) => Scaffold(
          appBar: CustomAppBar(title: model.title),
          body: AuthenticationLayout(
            busy: model.isBusy,
            onMainButtonTapped: model.saveData,
            onBackPressed: model.navigateBack,
            validationMessage: model.validationMessage,
            title: 'Create Account',
            subtitle: 'Enter your name, email and password for sign up.',
            mainButtonTitle: 'SIGN UP',
            form: Column(
              children: [
                TextField(
                  decoration: const InputDecoration(labelText: 'Email'),
                  controller: emailController,
                ),
                TextField(
                  decoration: const InputDecoration(labelText: 'Password'),
                  controller: passwordController,
                ),
              ],
            ),
            showTermsText: true,
          )),
      viewModelBuilder: () => CreateAccountViewModel(),
    );
  }
}

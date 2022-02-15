import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../widgets/custom_app_bar.dart';
import 'profile_viewmodel.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: CustomAppBar(title: model.title),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Text("Profile"),
              ElevatedButton(
                onPressed: model.runLogOut,
                child: const Text("Logout"),
              )
            ],
          ),
        ),
      ),
      viewModelBuilder: () => ProfileViewModel(),
    );
  }
}

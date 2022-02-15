import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../widgets/custom_app_bar.dart';
import '../../widgets/blog_card.dart';
import 'blog_viewmodel.dart';

class BlogView extends StatelessWidget {
  const BlogView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BlogViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: CustomAppBar(title: model.title),
        body: SingleChildScrollView(
          child: Center(
            child: Column(children: [
              ...model.blogContent
                  .map((blog) => BlogCard(blog: blog))
            ]),
          ),
        ),
      ),
      viewModelBuilder: () => BlogViewModel(),
    );
  }
}

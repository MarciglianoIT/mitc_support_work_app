import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../widgets/custom_app_bar.dart';
import '../../widgets/blog_card.dart';
import 'blog_viewmodel.dart';

double calculateSize(BuildContext context, double add) {
  return MediaQuery.of(context).size.height -
      MediaQuery.of(context).viewPadding.top -
      MediaQuery.of(context).viewPadding.bottom -
      MediaQuery.of(context).viewInsets.top -
      add;
}

class BlogView extends StatelessWidget {
  const BlogView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BlogViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: CustomAppBar(title: model.title),
        body: Column(
          children: [
            const SizedBox(height: 40, child: Text("Searchbar")),
            SizedBox(
              height: calculateSize(context, 152.0),
              child: GridView.count(crossAxisCount: 2, children: [
                ...model.blogContent.map((blog) => BlogCard(blog: blog))
              ]),
            ),
          ],
        ),
      ),
      viewModelBuilder: () => BlogViewModel(),
    );
  }
}

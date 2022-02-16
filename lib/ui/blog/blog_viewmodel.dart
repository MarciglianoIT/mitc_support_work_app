import '../../model/blog/blog.dart';
import 'package:stacked/stacked.dart';

class BlogViewModel extends BaseViewModel {
  String title = 'News';

  List<Blog> blogContent = [
    Blog('Test1', '/test1', 'This is a test'),
    Blog('Test1', '/test1', 'This is a test'),
    Blog('Test1', '/test1', 'This is a test'),
    Blog('Test1', '/test1', 'This is a test'),
    Blog('Test2', '/test2', 'This is a test'),
    Blog('Test3', '/test3', 'This is a test'),
    Blog('Test3', '/test3', 'This is a test'),
    Blog('Test3', '/test3', 'This is a test'),
    Blog('Test3', '/test3', 'This is a test'),
  ];

  void doSomething() {
    notifyListeners();
  }
}

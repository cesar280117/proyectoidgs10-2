import 'package:get/get.dart';

class MenuController extends GetxController {
  int index = 0;

  void indexPage(int currentIndex) {
    index = currentIndex;
    update();
  }
}

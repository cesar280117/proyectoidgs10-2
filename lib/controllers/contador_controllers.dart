import 'package:get/get.dart';

class ContadorControllers extends GetxController {
  int valor = 0;

  void incrementar() {
    valor++;
    update();
  }

  void decrementar() {
    if (valor > 0) {
      valor--;
      update();
    }
  }

  void resetear() {
    valor = 0;
    update();
  }
}

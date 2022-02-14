import 'package:get/get.dart';

class ContadorControllers extends GetxController {
  var valor = 0.obs;

  void incrementar() => valor.value++;

  void decrementar() {
    if (valor.value > 0) {
      valor.value--;
    }
  }

  void resetear() => valor.value = 0;
}

import 'package:apiamiibos2/api/peticiones_api.dart';
import 'package:apiamiibos2/models/amiibo_model.dart';
import 'package:get/get.dart';

class AmiiboController extends GetxController {
  final peticionesApi = Get.find<PeticionesApi>();
  List<AmiiboModel> amiibos = [];

  Future<void> obtenerAmiibos() async {
    final response = await peticionesApi.httpGet();
    final listaAmiibos = response.body['amiibo'];
    final listaAmiibosModel = List<AmiiboModel>.from(
        listaAmiibos.map((amiibo) => AmiiboModel.fromJsonMap(amiibo)));
    amiibos.addAll(listaAmiibosModel);
    update();
  }
}

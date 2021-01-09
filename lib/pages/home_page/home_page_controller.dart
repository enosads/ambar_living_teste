import 'package:ambar_living_teste/models/repositorio_model.dart';
import 'package:ambar_living_teste/pages/home_page/repositorios_api.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  static HomePageController get to => Get.find();

  List<Repositorio> repositorios;

  @override
  void onInit() {
    fetchRepositorios();
  }

  fetchRepositorios() async {
    var response = await RepositoriosApi.getRepositorios();
    if (response.ok) {
      repositorios = response.result;
    }
    update();
  }


}

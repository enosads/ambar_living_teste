import 'package:ambar_living_teste/models/repositorio_model.dart';
import 'package:ambar_living_teste/utils/api_response.dart';
import 'package:ambar_living_teste/utils/http_helper.dart' as http;

class RepositoriosApi {
  static Future<ApiResponse<List<Repositorio>>> getRepositorios() async {
    try {
      var url = 'https://api.github.com/repositories';
      print(url);
      var response = await http.get(url);
      print('GET >> $url  Status: ${response.statusCode}');

      if (response.statusCode == 200) {
        final repositorios = response.data
            .map<Repositorio>((map) => Repositorio.fromMap(map))
            .toList();

        return ApiResponse.ok(result: repositorios);
      }
      return ApiResponse.error(msg: 'Não foi possível buscar repositórios.');
    } catch (error, exception) {
      print('Erro no login: $error > $exception');
      return ApiResponse.error(msg: 'Não foi possível buscar repositórios.');
    }
  }
}

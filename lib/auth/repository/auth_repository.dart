
import 'package:injectable/injectable.dart';
import 'package:workiom/abstracts/model/WebServiceResponse.dart';

import '../../abstracts/WebUrl.dart';
import '../../module_network/http_client/http_client.dart';
import '../request/getactivetenants_request.dart';
import '../request/login_repository.dart';
import '../service/auth_service.dart';


@injectable
class AuthRepository {
  final ApiClient _apiClient;
  final AuthService _authService;

  AuthRepository(this._apiClient, this._authService,);

  Future<WebServiceResponse?> GetActiveTenantsByEmail(GetActiveTenantsRequest request) async {
    var token =   _authService.getToken();
    WebServiceResponse? response = await _apiClient.get(
      Urls.GetActiveTenants ,queryParams: request.toJson(),
      headers: {'Authorization': 'Bearer ' '$token'},
    );
    if (response == null) return null;
    return response;
  }

  Future<WebServiceResponse?> loginRequest(LoginRequest request) async {
    var token =   _authService.getToken();
    WebServiceResponse? response = await _apiClient.post(
      Urls.LOGIN ,request.toJson(),
      headers: {'Authorization': 'Bearer ' '$token'},
    );
    if (response == null) return null;
    return response;
  }




}


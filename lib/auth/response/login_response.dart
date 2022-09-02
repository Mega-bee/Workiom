class LoginResponse {
  String? accessToken;

  LoginResponse({
    this.accessToken,
  });

  LoginResponse.fromJson(Map<String, dynamic> json) {
    accessToken = json['accessToken'];
  }
}

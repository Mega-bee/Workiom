class LoginRequest {
  String? userNameOrEmailAddress;
  String? password;
  String? tenantName;

  LoginRequest(this.tenantName,this.password,this.userNameOrEmailAddress);

  Map<String, dynamic> toJson() {
    return {
      'userNameOrEmailAddress': userNameOrEmailAddress,
      'password': password,
      'tenantName': tenantName,
    };
  }

}
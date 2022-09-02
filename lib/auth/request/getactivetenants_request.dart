class GetActiveTenantsRequest {
  String? email;

  GetActiveTenantsRequest(this.email);

  Map<String, dynamic> toJson() {
    return {
      'email': email,
    };
  }

}
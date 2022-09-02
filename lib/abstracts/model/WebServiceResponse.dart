class WebServiceResponse {
  dynamic  result;
  dynamic  error;
  bool? success;

  WebServiceResponse(this.success, this.result, this.error);
  factory WebServiceResponse.fromJson(Map<String, dynamic> item) {
    return WebServiceResponse(
      item['success'],
      item['result'],
      item['error'],
    );
  }
  get data => success;
  String get errorMessage => error;
  int get code => result;
}

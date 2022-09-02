class logInModel {

  String? token;

  logInModel({  this.token});

  logInModel.fromJson(Map<String, dynamic> json) {


    token = json['token'];
  }

}
//class ActiveResponse {
//  List<Result>? result;
//
//  ActiveResponse(
//      {this.result,
//      });
//
//  ActiveResponse.fromJson(Map<String, dynamic> json) {
//    if (json['result'] != null) {
//      result = <Result>[];
//      json['result'].forEach((v) {
//        result!.add(new Result.fromJson(v));
//      });
//    }
//    targetUrl = json['targetUrl'];
//    success = json['success'];
//    unAuthorizedRequest = json['unAuthorizedRequest'];
//    bAbp = json['__abp'];
//  }
//
//
//}

class Result {
  String? tenancyName;
  String? name;
  String? logoUrl;

  int? id;

  Result(
      {this.tenancyName,
        this.name,
        this.logoUrl,
        this.id});

  Result.fromJson(Map<String, dynamic> json) {
    tenancyName = json['tenancyName'];
    name = json['name'];
    logoUrl = json['logoUrl'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tenancyName'] = this.tenancyName;
    data['name'] = this.name;
    data['logoUrl'] = this.logoUrl;
    data['id'] = this.id;
    return data;
  }
}


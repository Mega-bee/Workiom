class ActiveResponse {
  List<Result>? result;
  String? targetUrl;
  bool? success;
  // String? error;
  bool? unAuthorizedRequest;
  bool? bAbp;

  ActiveResponse(
      {this.result,
        this.targetUrl,
        this.success,
        this.unAuthorizedRequest,
        this.bAbp});

  ActiveResponse.fromJson(Map<String, dynamic> json) {
    if (json['result'] != null) {
      result = <Result>[];
      json['result'].forEach((v) {
        result!.add(new Result.fromJson(v));
      });
    }
    targetUrl = json['targetUrl'];
    success = json['success'];
    unAuthorizedRequest = json['unAuthorizedRequest'];
    bAbp = json['__abp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.result != null) {
      data['result'] = this.result!.map((v) => v.toJson()).toList();
    }
    data['targetUrl'] = this.targetUrl;
    data['success'] = this.success;
    data['unAuthorizedRequest'] = this.unAuthorizedRequest;
    data['__abp'] = this.bAbp;
    return data;
  }
}

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


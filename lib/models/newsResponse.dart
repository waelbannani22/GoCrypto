import 'package:json_annotation/json_annotation.dart';

import 'news.dart';

@JsonSerializable()
class newsResponse {
  late String status;
  late String totalResults;
  late News results;

  newsResponse.empty() {}

  newsResponse(this.status, this.totalResults, this.results);
  toJSONEncodable() {
    Map<String, dynamic> m = new Map();

    m['status'] = status;
    m['totalResults'] = totalResults;
    m['results'] = results;

    return m;
  }

  /* factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
  **/
  newsResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    totalResults = json['totalResults'];
    results = json['results'];
  }
}

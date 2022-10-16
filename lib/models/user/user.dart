import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

@JsonSerializable()
class User {
  late String id;
  late String username;
  late String email;
  late String password;
  late String phone;
  User.empty() {}
  User(this.id, this.username, this.email, this.password, this.phone);
  toJSONEncodable() {
    Map<String, dynamic> m = new Map();

    m['_id'] = id;
    m['username'] = username;
    m['email'] = email;
    m['password'] = password;
    m['phone'] = phone;

    return m;
  }
  

  /* factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
  **/
  User.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
    username = json['username'];
    email = json['email'];
    phone = json['phone'];
    password = json['password'];
  }
}

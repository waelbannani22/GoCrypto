import 'package:json_annotation/json_annotation.dart';

class Exchanges {
  String? name;
  String? country;
  String? url;
  String? image;
  int? year_established;
  int? rank;

  Exchanges(
      {this.name,
      this.country,
      this.url,
      this.image,
      this.year_established,
      this.rank});
  factory Exchanges.fromJson(Map<String, dynamic> json) {
    // name = json['name'];
    return Exchanges(
        name: json['name'],
        country: json['country'] == null ? "no country" : json['country'],
        url: json['url'],
        image: json['image'],
        year_established:
            json['year_established'] == null ? 0000 : json['year_established'],
        rank: json['trust_score_rank'] == null ? 0 : json['trust_score_rank']);
    /* if (json['name'] == null) {
      name = "wael bannani";
    } else {
      image = json['name'];
    }

    if (json['image'] == null) {
      image =
          "https://img.freepik.com/vecteurs-libre/fond-piece-monnaie-crypto-monnaie-bitcoin-dore_1017-31518.jpg?w=2000";
    } else {
      image = json['image'];
    }

    // url = json['url'];
    if (json['url'] == null) {
      name = "wael bannani";
    } else {
      image = json['url'];
    }

    if (json['country'] == null) {
      country = "no country";
    } else {
      country = json['description'];
    }
  }
  **/
  }
}

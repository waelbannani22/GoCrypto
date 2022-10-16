import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class News {
  late String title;
  late String image;
  late String pubDate;
  late String description;
  late String source;
  late String url;

  News.empty() {}

  News(this.title, this.image, this.pubDate, this.description, this.source,
      this.url);
  toJSONEncodable() {
    Map<String, dynamic> m = new Map();

    m['title'] = title;
    m['image_url'] = image;
    m['pubDate'] = pubDate;
    m['description'] = description;
    m['source'] = source;
    m['url'] = url;

    return m;
  }

  /* factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
  **/
  News.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    if (json['image_url'] == null) {
      image =
          "https://img.freepik.com/vecteurs-libre/fond-piece-monnaie-crypto-monnaie-bitcoin-dore_1017-31518.jpg?w=2000";
    } else {
      image = json['image_url'];
    }

    pubDate = json['pubDate'];
    if (json['description'] == null) {
      description = "no description ";
    } else {
      description = json['description'];
    }

    source = json['source_id'];
    if (json['link'] == null) {
      url = "https://cryptonews.net";
    } else {
      url = json['link'];
    }
  }
}

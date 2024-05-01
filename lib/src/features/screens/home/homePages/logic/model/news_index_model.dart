import 'package:json_annotation/json_annotation.dart';

part 'news_index_model.g.dart';

@JsonSerializable()
class NewsIndexModel {
  List<Data> data;
  Links links;
  Meta meta;

  NewsIndexModel({
    required this.data,
    required this.links,
    required this.meta,
  });

  factory NewsIndexModel.fromJson(Map<String, dynamic> json) => _$NewsIndexModelFromJson(json);

  Map<String, dynamic> toJson() => _$NewsIndexModelToJson(this);
}

@JsonSerializable()
class Data {
  int id;
  String title;
  String image;
  String createdAt;

  Data({
    required this.id,
    required this.title,
    required this.image,
    required this.createdAt,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Links {
  String first;
  String last;
  dynamic prev;
  dynamic next;

  Links({
    required this.first,
    required this.last,
    required this.prev,
    required this.next,
  });

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

  Map<String, dynamic> toJson() => _$LinksToJson(this);
}

@JsonSerializable()
class Meta {
  int currentPage;
  int from;
  int lastPage;
  List<Link> links;
  String path;
  int perPage;
  int to;
  int total;

  Meta({
    required this.currentPage,
    required this.from,
    required this.lastPage,
    required this.links,
    required this.path,
    required this.perPage,
    required this.to,
    required this.total,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  Map<String, dynamic> toJson() => _$MetaToJson(this);
}

@JsonSerializable()
class Link {
  String? url;
  String label;
  bool active;

  Link({
    required this.url,
    required this.label,
    required this.active,
  });

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);

  Map<String, dynamic> toJson() => _$LinkToJson(this);
}
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

  factory NewsIndexModel.fromJson(Map<String, dynamic> json) =>
      _$NewsIndexModelFromJson(json);

  Map<String, dynamic> toJson() => _$NewsIndexModelToJson(this);
}

@JsonSerializable()
class Data {
  int id;
  String title;
  List<String> sections;
  String image;
  @JsonKey(name: 'created_at') // Specify the field name in JSON
  String createdAt;

  Data({
    required this.id,
    required this.title,
    required this.sections,
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
  @JsonKey(nullable: true) // Make the field nullable
  String? prev;
  @JsonKey(nullable: true) // Make the field nullable
  String? next;

  Links({
    required this.first,
    required this.last,
    this.prev,
    this.next,
  });

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

  Map<String, dynamic> toJson() => _$LinksToJson(this);
}

@JsonSerializable()
class Meta {
  int? currentPage;
  int? from;
  int? lastPage;
  List<Link>? links;
  String? path;
  int? perPage;
  int? to;
  int? total;

  Meta({
    this.currentPage,
    this.from,
    this.lastPage,
    required this.links,
    this.path,
    this.perPage,
    this.to,
    this.total,
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

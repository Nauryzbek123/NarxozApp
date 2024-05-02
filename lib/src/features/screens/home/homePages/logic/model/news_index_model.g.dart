// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_index_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsIndexModel _$NewsIndexModelFromJson(Map<String, dynamic> json) =>
    NewsIndexModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
      links: Links.fromJson(json['links'] as Map<String, dynamic>),
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NewsIndexModelToJson(NewsIndexModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'links': instance.links,
      'meta': instance.meta,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as int,
      title: json['title'] as String,
      sections:
          (json['sections'] as List<dynamic>).map((e) => e as String).toList(),
      image: json['image'] as String,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'sections': instance.sections,
      'image': instance.image,
      'created_at': instance.createdAt,
    };

Links _$LinksFromJson(Map<String, dynamic> json) => Links(
      first: json['first'] as String,
      last: json['last'] as String,
      prev: json['prev'] as String?,
      next: json['next'] as String?,
    );

Map<String, dynamic> _$LinksToJson(Links instance) => <String, dynamic>{
      'first': instance.first,
      'last': instance.last,
      'prev': instance.prev,
      'next': instance.next,
    };

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      currentPage: json['currentPage'] as int?,
      from: json['from'] as int?,
      lastPage: json['lastPage'] as int?,
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      path: json['path'] as String?,
      perPage: json['perPage'] as int?,
      to: json['to'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'currentPage': instance.currentPage,
      'from': instance.from,
      'lastPage': instance.lastPage,
      'links': instance.links,
      'path': instance.path,
      'perPage': instance.perPage,
      'to': instance.to,
      'total': instance.total,
    };

Link _$LinkFromJson(Map<String, dynamic> json) => Link(
      url: json['url'] as String?,
      label: json['label'] as String,
      active: json['active'] as bool,
    );

Map<String, dynamic> _$LinkToJson(Link instance) => <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };

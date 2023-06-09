// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DashboardResponse _$$_DashboardResponseFromJson(Map<String, dynamic> json) =>
    _$_DashboardResponse(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DashboardResponseToJson(
        _$_DashboardResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      currentPage: json['currentPage'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['firstPageUrl'] as String?,
      from: json['from'] as int?,
      lastPage: json['lastPage'] as int?,
      lastPageUrl: json['lastPageUrl'] as String?,
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageUrl: json['nextPageUrl'],
      path: json['path'] as String?,
      perPage: json['perPage'] as int?,
      prevPageUrl: json['prevPageUrl'],
      to: json['to'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'currentPage': instance.currentPage,
      'data': instance.data,
      'firstPageUrl': instance.firstPageUrl,
      'from': instance.from,
      'lastPage': instance.lastPage,
      'lastPageUrl': instance.lastPageUrl,
      'links': instance.links,
      'nextPageUrl': instance.nextPageUrl,
      'path': instance.path,
      'perPage': instance.perPage,
      'prevPageUrl': instance.prevPageUrl,
      'to': instance.to,
      'total': instance.total,
    };

_$_Datum _$$_DatumFromJson(Map<String, dynamic> json) => _$_Datum(
      id: json['id'] as int?,
      judul: json['judul'] as String?,
      slug: json['slug'] as String?,
      keterangan: json['keterangan'] as String?,
      tipe: json['tipe'] as String?,
      kategoriId: json['kategoriId'],
      kategoriName: json['kategoriName'] as String?,
      sourceId: json['sourceId'] as int?,
      sourceName: json['sourceName'] as String?,
      sourceUrl: json['sourceUrl'] as String?,
      sourceDate: json['sourceDate'],
      propinsiId: json['propinsiId'] as int?,
      kotaId: json['kotaId'] as int?,
      propinsiName: json['propinsiName'] as String?,
      kotaName: json['kotaName'] as String?,
      tagsPihak: json['tagsPihak'] == null
          ? null
          : Tags.fromJson(json['tagsPihak'] as Map<String, dynamic>),
      tagsTopik: json['tagsTopik'] == null
          ? null
          : Tags.fromJson(json['tagsTopik'] as Map<String, dynamic>),
      tagsOtonomi: json['tagsOtonomi'] == null
          ? null
          : Tags.fromJson(json['tagsOtonomi'] as Map<String, dynamic>),
      totalRead: json['totalRead'] as int?,
      totalLike: json['totalLike'] as int?,
      totalShared: json['totalShared'],
      domain: json['domain'] as String?,
      fullPath: json['fullPath'] as String?,
      fileUpload: json['fileUpload'] as String?,
      thumbPath: json['thumbPath'] as String?,
      videoUrl: json['videoUrl'],
      thumbnail: json['thumbnail'],
      images: json['images'] as String?,
      activeAt: json['activeAt'] == null
          ? null
          : DateTime.parse(json['activeAt'] as String),
      activeBy: json['activeBy'] as String?,
      publishAt: json['publishAt'] == null
          ? null
          : DateTime.parse(json['publishAt'] as String),
      publishBy: json['publishBy'] == null
          ? null
          : DateTime.parse(json['publishBy'] as String),
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
      deletedBy: json['deletedBy'] == null
          ? null
          : DateTime.parse(json['deletedBy'] as String),
    );

Map<String, dynamic> _$$_DatumToJson(_$_Datum instance) => <String, dynamic>{
      'id': instance.id,
      'judul': instance.judul,
      'slug': instance.slug,
      'keterangan': instance.keterangan,
      'tipe': instance.tipe,
      'kategoriId': instance.kategoriId,
      'kategoriName': instance.kategoriName,
      'sourceId': instance.sourceId,
      'sourceName': instance.sourceName,
      'sourceUrl': instance.sourceUrl,
      'sourceDate': instance.sourceDate,
      'propinsiId': instance.propinsiId,
      'kotaId': instance.kotaId,
      'propinsiName': instance.propinsiName,
      'kotaName': instance.kotaName,
      'tagsPihak': instance.tagsPihak,
      'tagsTopik': instance.tagsTopik,
      'tagsOtonomi': instance.tagsOtonomi,
      'totalRead': instance.totalRead,
      'totalLike': instance.totalLike,
      'totalShared': instance.totalShared,
      'domain': instance.domain,
      'fullPath': instance.fullPath,
      'fileUpload': instance.fileUpload,
      'thumbPath': instance.thumbPath,
      'videoUrl': instance.videoUrl,
      'thumbnail': instance.thumbnail,
      'images': instance.images,
      'activeAt': instance.activeAt?.toIso8601String(),
      'activeBy': instance.activeBy,
      'publishAt': instance.publishAt?.toIso8601String(),
      'publishBy': instance.publishBy?.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
      'deletedBy': instance.deletedBy?.toIso8601String(),
    };

_$_Tags _$$_TagsFromJson(Map<String, dynamic> json) => _$_Tags(
      tagsId: json['tagsId'] as int?,
      tagsName: json['tagsName'] as String?,
      tagsIcon: json['tagsIcon'] as String?,
      tagsTipe: json['tagsTipe'] as String?,
    );

Map<String, dynamic> _$$_TagsToJson(_$_Tags instance) => <String, dynamic>{
      'tagsId': instance.tagsId,
      'tagsName': instance.tagsName,
      'tagsIcon': instance.tagsIcon,
      'tagsTipe': instance.tagsTipe,
    };

_$_Link _$$_LinkFromJson(Map<String, dynamic> json) => _$_Link(
      url: json['url'] as String?,
      label: json['label'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$$_LinkToJson(_$_Link instance) => <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };

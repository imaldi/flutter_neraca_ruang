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
      currentPage: json['current_page'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['first_page_url'] as String?,
      from: json['from'] as int?,
      lastPage: json['last_page'] as int?,
      lastPageUrl: json['last_page_url'] as String?,
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageUrl: json['next_page_url'] as String?,
      path: json['path'] as String?,
      perPage: json['per_page'] as int?,
      prevPageUrl: json['prev_page_url'] as String?,
      to: json['to'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.data,
      'first_page_url': instance.firstPageUrl,
      'from': instance.from,
      'last_page': instance.lastPage,
      'last_page_url': instance.lastPageUrl,
      'links': instance.links,
      'next_page_url': instance.nextPageUrl,
      'path': instance.path,
      'per_page': instance.perPage,
      'prev_page_url': instance.prevPageUrl,
      'to': instance.to,
      'total': instance.total,
    };

_$_Datum _$$_DatumFromJson(Map<String, dynamic> json) => _$_Datum(
      id: json['id'] as int?,
      judul: json['judul'] as String?,
      slug: json['slug'] as String?,
      keterangan: json['keterangan'] as String?,
      tipe: json['tipe'] as String?,
      kategoriId: json['kategori_id'] as int?,
      kategoriName: json['kategori_name'] as String?,
      sourceId: json['source_id'] as int?,
      sourceName: json['source_name'] as String?,
      sourceUrl: json['source_url'] as String?,
      sourceDate: json['source_date'],
      propinsiId: json['propinsi_id'] as int?,
      kotaId: json['kota_id'] as int?,
      propinsiName: json['propinsi_name'] as String?,
      kotaName: json['kota_name'] as String?,
      tagsPihak: json['tags_pihak'] == null
          ? null
          : Tags.fromJson(json['tags_pihak'] as Map<String, dynamic>),
      tagsTopik: json['tags_topik'] == null
          ? null
          : Tags.fromJson(json['tags_topik'] as Map<String, dynamic>),
      tagsOtonomi: json['tags_otonomi'] == null
          ? null
          : Tags.fromJson(json['tags_otonomi'] as Map<String, dynamic>),
      totalRead: json['total_read'] as int?,
      totalLike: json['total_like'] as int?,
      totalShared: json['total_shared'] as int?,
      domain: json['domain'] as String?,
      fullPath: json['full_path'] as String?,
      fileUpload: json['file_upload'] as String?,
      thumbPath: json['thumb_path'] as String?,
      videoUrl: json['video_url'] as String?,
      thumbnail: json['thumbnail'] as String?,
      images: json['images'] as String?,
      activeAt: json['active_at'] == null
          ? null
          : DateTime.parse(json['active_at'] as String),
      activeBy: json['active_by'] as String?,
      publishAt: json['publish_at'] == null
          ? null
          : DateTime.parse(json['publish_at'] as String),
      publishBy: json['publish_by'] as String?,
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      deletedBy: json['deleted_by'] as String?,
    );

Map<String, dynamic> _$$_DatumToJson(_$_Datum instance) => <String, dynamic>{
      'id': instance.id,
      'judul': instance.judul,
      'slug': instance.slug,
      'keterangan': instance.keterangan,
      'tipe': instance.tipe,
      'kategori_id': instance.kategoriId,
      'kategori_name': instance.kategoriName,
      'source_id': instance.sourceId,
      'source_name': instance.sourceName,
      'source_url': instance.sourceUrl,
      'source_date': instance.sourceDate,
      'propinsi_id': instance.propinsiId,
      'kota_id': instance.kotaId,
      'propinsi_name': instance.propinsiName,
      'kota_name': instance.kotaName,
      'tags_pihak': instance.tagsPihak,
      'tags_topik': instance.tagsTopik,
      'tags_otonomi': instance.tagsOtonomi,
      'total_read': instance.totalRead,
      'total_like': instance.totalLike,
      'total_shared': instance.totalShared,
      'domain': instance.domain,
      'full_path': instance.fullPath,
      'file_upload': instance.fileUpload,
      'thumb_path': instance.thumbPath,
      'video_url': instance.videoUrl,
      'thumbnail': instance.thumbnail,
      'images': instance.images,
      'active_at': instance.activeAt?.toIso8601String(),
      'active_by': instance.activeBy,
      'publish_at': instance.publishAt?.toIso8601String(),
      'publish_by': instance.publishBy,
      'deleted_at': instance.deletedAt?.toIso8601String(),
      'deleted_by': instance.deletedBy,
    };

_$_Tags _$$_TagsFromJson(Map<String, dynamic> json) => _$_Tags(
      tagsId: json['tags_id'] as int?,
      tagsName: json['tags_name'] as String?,
      tagsIcon: json['tags_icon'] as String?,
      tagsTipe: json['tags_tipe'] as String?,
    );

Map<String, dynamic> _$$_TagsToJson(_$_Tags instance) => <String, dynamic>{
      'tags_id': instance.tagsId,
      'tags_name': instance.tagsName,
      'tags_icon': instance.tagsIcon,
      'tags_tipe': instance.tagsTipe,
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

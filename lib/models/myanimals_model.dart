import 'package:hive/hive.dart';

part 'myanimals_model.g.dart';

@HiveType(typeId: 0)
class MyAnimalsModel {
  MyAnimalsModel({
    this.id,
    this.name,
    this.description,
    this.percentFood,
    this.percentMade,
    this.count,
    this.slug,
    this.publishedAt,
    this.createdAt,
    this.updatedAt,
    this.img,
  });
  @HiveField(0)
  int? id;
  @HiveField(1)
  String? name;
  @HiveField(2)
  String? description;
  @HiveField(3)
  int? percentFood;
  @HiveField(4)
  int? percentMade;
  @HiveField(5)
  int? count;
  @HiveField(6)
  String? slug;
  @HiveField(7)
  DateTime? publishedAt;
  @HiveField(8)
  DateTime? createdAt;
  @HiveField(9)
  DateTime? updatedAt;
  @HiveField(10)
  Img? img;

  factory MyAnimalsModel.fromJson(Map<String, dynamic> json) => MyAnimalsModel(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        percentFood: json["percent_food"],
        percentMade: json["percent_made"],
        count: json["count"],
        slug: json["slug"],
        publishedAt: DateTime.parse(json["published_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        img: Img.fromJson(json["img"]),
      );
}

@HiveType(typeId: 1)
class Img {
  Img({
    this.id,
    this.name,
    this.alternativeText,
    this.caption,
    this.width,
    this.height,
    this.formats,
    this.hash,
    this.ext,
    this.mime,
    this.size,
    this.url,
    this.previewUrl,
    this.provider,
    this.providerMetadata,
    this.createdAt,
    this.updatedAt,
  });
  @HiveField(0)
  int? id;
  @HiveField(1)
  String? name;
  @HiveField(2)
  String? alternativeText;
  @HiveField(3)
  String? caption;
  @HiveField(4)
  int? width;
  @HiveField(5)
  int? height;
  @HiveField(6)
  Formats? formats;
  @HiveField(7)
  String? hash;
  @HiveField(8)
  String? ext;
  @HiveField(9)
  String? mime;
  @HiveField(10)
  double? size;
  @HiveField(11)
  String? url;
  @HiveField(12)
  dynamic previewUrl;
  @HiveField(13)
  String? provider;
  @HiveField(14)
  dynamic providerMetadata;
  @HiveField(15)
  DateTime? createdAt;
  @HiveField(16)
  DateTime? updatedAt;

  factory Img.fromJson(Map<String, dynamic> json) => Img(
        id: json["id"],
        name: json["name"],
        alternativeText: json["alternativeText"],
        caption: json["caption"],
        width: json["width"],
        height: json["height"],
        formats: Formats.fromJson(json["formats"]),
        hash: json["hash"],
        ext: json["ext"],
        mime: json["mime"],
        size: json["size"].toDouble(),
        url: json["url"],
        previewUrl: json["previewUrl"],
        provider: json["provider"],
        providerMetadata: json["provider_metadata"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );
}

@HiveType(typeId: 2)
class Formats {
  Formats({
    this.thumbnail,
    this.large,
    this.medium,
    this.small,
  });
  @HiveField(0)
  Large? thumbnail;
  @HiveField(1)
  Large? large;
  @HiveField(2)
  Large? medium;
  @HiveField(3)
  Large? small;

  factory Formats.fromJson(Map<String, dynamic> json) => Formats(
        thumbnail: Large.fromJson(json["thumbnail"]),
        large: Large.fromJson(json["large"]),
        medium: Large.fromJson(json["medium"]),
        small: Large.fromJson(json["small"]),
      );
}

@HiveType(typeId: 3)
class Large {
  Large({
    this.name,
    this.hash,
    this.ext,
    this.mime,
    this.width,
    this.height,
    this.size,
    this.path,
    this.url,
  });
  @HiveField(0)
  String? name;
  @HiveField(1)
  String? ext;
  @HiveField(2)
  String? hash;
  @HiveField(3)
  String? mime;
  @HiveField(4)
  int? width;
  @HiveField(5)
  int? height;
  @HiveField(6)
  double? size;
  @HiveField(7)
  dynamic path;
  @HiveField(8)
  String? url;

  factory Large.fromJson(Map<String, dynamic> json) => Large(
        name: json["name"],
        hash: json["hash"],
        ext: json["ext"],
        mime: json["mime"],
        width: json["width"],
        height: json["height"],
        size: json["size"].toDouble(),
        path: json["path"],
        url: json["url"],
      );
}

import 'dart:convert';

PictureModel? pictureModelFromJson(String str) =>
    PictureModel.fromJson(json.decode(str));

String pictureModelToJson(PictureModel? data) => json.encode(data!.toJson());

class PictureModel {
  PictureModel({
    required this.total,
    required this.totalPages,
    required this.results,
  });

  int? total;
  int? totalPages;
  List<Result?>? results;

  PictureModel copyWith({
    int? total,
    int? totalPages,
    List<Result?>? results,
  }) =>
      PictureModel(
        total: total ?? this.total,
        totalPages: totalPages ?? this.totalPages,
        results: results ?? this.results,
      );

  factory PictureModel.fromJson(Map<String, dynamic> json) => PictureModel(
        total: json["total"],
        totalPages: json["total_pages"],
        results: json["results"] == null
            ? []
            : List<Result?>.from(
                json["results"]!.map((x) => Result.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "total": total,
        "total_pages": totalPages,
        "results": results == null
            ? []
            : List<dynamic>.from(results!.map((x) => x!.toJson())),
      };
}

class Result {
  Result({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.promotedAt,
    required this.width,
    required this.height,
    required this.color,
    required this.blurHash,
    required this.description,
    required this.altDescription,
    required this.urls,
    required this.links,
    required this.likes,
    required this.likedByUser,
    required this.currentUserCollections,
    required this.sponsorship,
    required this.user,
  });

  String? id;
  String? createdAt;
  String? updatedAt;
  String? promotedAt;
  int? width;
  int? height;
  String? color;
  String? blurHash;
  String? description;
  String? altDescription;
  Urls? urls;
  ResultLinks? links;
  int? likes;
  bool? likedByUser;
  List<dynamic>? currentUserCollections;
  dynamic sponsorship;
  User? user;

  Result copyWith({
    String? id,
    String? createdAt,
    String? updatedAt,
    String? promotedAt,
    int? width,
    int? height,
    String? color,
    String? blurHash,
    String? description,
    String? altDescription,
    Urls? urls,
    ResultLinks? links,
    int? likes,
    bool? likedByUser,
    List<dynamic>? currentUserCollections,
    dynamic sponsorship,
    User? user,
  }) =>
      Result(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        promotedAt: promotedAt ?? this.promotedAt,
        width: width ?? this.width,
        height: height ?? this.height,
        color: color ?? this.color,
        blurHash: blurHash ?? this.blurHash,
        description: description ?? this.description,
        altDescription: altDescription ?? this.altDescription,
        urls: urls ?? this.urls,
        links: links ?? this.links,
        likes: likes ?? this.likes,
        likedByUser: likedByUser ?? this.likedByUser,
        currentUserCollections:
            currentUserCollections ?? this.currentUserCollections,
        sponsorship: sponsorship ?? this.sponsorship,
        user: user ?? this.user,
      );

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["id"],
        createdAt: json["created_at"].toString(),
        updatedAt: json["updated_at"].toString(),
        promotedAt: json["promoted_at"],
        width: json["width"],
        height: json["height"],
        color: json["color"],
        blurHash: json["blur_hash"],
        description: json["description"],
        altDescription: json["alt_description"],
        urls: Urls.fromJson(json["urls"]),
        links: ResultLinks.fromJson(json["links"]),
        likes: json["likes"],
        likedByUser: json["liked_by_user"],
        currentUserCollections: json["current_user_collections"] == null
            ? []
            : List<dynamic>.from(
                json["current_user_collections"]!.map((x) => x)),
        sponsorship: json["sponsorship"],
        user: User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt.toString(),
        "updated_at": updatedAt.toString(),
        "promoted_at": promotedAt,
        "width": width,
        "height": height,
        "color": color,
        "blur_hash": blurHash,
        "description": description,
        "alt_description": altDescription,
        "urls": urls!.toJson(),
        "links": links!.toJson(),
        "likes": likes,
        "liked_by_user": likedByUser,
        "current_user_collections": currentUserCollections == null
            ? []
            : List<dynamic>.from(currentUserCollections!.map((x) => x)),
        "sponsorship": sponsorship,
        "user": user!.toJson(),
      };
}

class ResultLinks {
  ResultLinks({
    required this.self,
    required this.html,
    required this.download,
    required this.downloadLocation,
  });

  String? self;
  String? html;
  String? download;
  String? downloadLocation;

  ResultLinks copyWith({
    String? self,
    String? html,
    String? download,
    String? downloadLocation,
  }) =>
      ResultLinks(
        self: self ?? this.self,
        html: html ?? this.html,
        download: download ?? this.download,
        downloadLocation: downloadLocation ?? this.downloadLocation,
      );

  factory ResultLinks.fromJson(Map<String, dynamic> json) => ResultLinks(
        self: json["self"],
        html: json["html"],
        download: json["download"],
        downloadLocation: json["download_location"],
      );

  Map<String, dynamic> toJson() => {
        "self": self,
        "html": html,
        "download": download,
        "download_location": downloadLocation,
      };
}

class Source {
  Source({
    required this.ancestry,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.metaTitle,
    required this.metaDescription,
    required this.coverPhoto,
  });

  Ancestry? ancestry;
  String? title;
  String? subtitle;
  String? description;
  String? metaTitle;
  String? metaDescription;
  CoverPhoto? coverPhoto;

  Source copyWith({
    Ancestry? ancestry,
    String? title,
    String? subtitle,
    String? description,
    String? metaTitle,
    String? metaDescription,
    CoverPhoto? coverPhoto,
  }) =>
      Source(
        ancestry: ancestry ?? this.ancestry,
        title: title ?? this.title,
        subtitle: subtitle ?? this.subtitle,
        description: description ?? this.description,
        metaTitle: metaTitle ?? this.metaTitle,
        metaDescription: metaDescription ?? this.metaDescription,
        coverPhoto: coverPhoto ?? this.coverPhoto,
      );

  factory Source.fromJson(Map<String, dynamic> json) => Source(
        ancestry: Ancestry.fromJson(json["ancestry"]),
        title: json["title"],
        subtitle: json["subtitle"],
        description: json["description"],
        metaTitle: json["meta_title"],
        metaDescription: json["meta_description"],
        coverPhoto: CoverPhoto.fromJson(json["cover_photo"]),
      );

  Map<String, dynamic> toJson() => {
        "ancestry": ancestry!.toJson(),
        "title": title,
        "subtitle": subtitle,
        "description": description,
        "meta_title": metaTitle,
        "meta_description": metaDescription,
        "cover_photo": coverPhoto!.toJson(),
      };
}

class Ancestry {
  Ancestry({
    required this.type,
    required this.category,
    required this.subcategory,
  });

  TypeClass? type;
  TypeClass? category;
  TypeClass? subcategory;

  Ancestry copyWith({
    TypeClass? type,
    TypeClass? category,
    TypeClass? subcategory,
  }) =>
      Ancestry(
        type: type ?? this.type,
        category: category ?? this.category,
        subcategory: subcategory ?? this.subcategory,
      );

  factory Ancestry.fromJson(Map<String, dynamic> json) => Ancestry(
        type: TypeClass.fromJson(json["type"]),
        category: json["category"],
        subcategory: json["subcategory"],
      );

  Map<String, dynamic> toJson() => {
        "type": type!.toJson(),
        "category": category,
        "subcategory": subcategory,
      };
}

class TypeClass {
  TypeClass({
    required this.slug,
    required this.prettySlug,
  });

  String? slug;
  String? prettySlug;

  TypeClass copyWith({
    String? slug,
    String? prettySlug,
  }) =>
      TypeClass(
        slug: slug ?? this.slug,
        prettySlug: prettySlug ?? this.prettySlug,
      );

  factory TypeClass.fromJson(Map<String, dynamic> json) => TypeClass(
        slug: json["slug"],
        prettySlug: json["pretty_slug"],
      );

  Map<String, dynamic> toJson() => {
        "slug": slug,
        "pretty_slug": prettySlug,
      };
}

class CoverPhoto {
  CoverPhoto({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.promotedAt,
    required this.width,
    required this.height,
    required this.color,
    required this.blurHash,
    required this.description,
    required this.altDescription,
    required this.urls,
    required this.links,
    required this.likes,
    required this.likedByUser,
    required this.currentUserCollections,
    required this.sponsorship,
    required this.topicSubmissions,
    required this.user,
    required this.premium,
  });

  String? id;
  String? createdAt;
  String? updatedAt;
  String? promotedAt;
  int? width;
  int? height;
  String? color;
  String? blurHash;
  String? description;
  String? altDescription;
  Urls? urls;
  ResultLinks? links;
  int? likes;
  bool? likedByUser;
  List<dynamic>? currentUserCollections;
  dynamic sponsorship;
  String? topicSubmissions;
  User? user;
  bool? premium;

  CoverPhoto copyWith({
    String? id,
    String? createdAt,
    String? updatedAt,
    String? promotedAt,
    int? width,
    int? height,
    String? color,
    String? blurHash,
    String? description,
    String? altDescription,
    Urls? urls,
    ResultLinks? links,
    int? likes,
    bool? likedByUser,
    List<dynamic>? currentUserCollections,
    dynamic sponsorship,
    String? topicSubmissions,
    User? user,
    bool? premium,
  }) =>
      CoverPhoto(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        promotedAt: promotedAt ?? this.promotedAt,
        width: width ?? this.width,
        height: height ?? this.height,
        color: color ?? this.color,
        blurHash: blurHash ?? this.blurHash,
        description: description ?? this.description,
        altDescription: altDescription ?? this.altDescription,
        urls: urls ?? this.urls,
        links: links ?? this.links,
        likes: likes ?? this.likes,
        likedByUser: likedByUser ?? this.likedByUser,
        currentUserCollections:
            currentUserCollections ?? this.currentUserCollections,
        sponsorship: sponsorship ?? this.sponsorship,
        topicSubmissions: topicSubmissions ?? this.topicSubmissions,
        user: user ?? this.user,
        premium: premium ?? this.premium,
      );

  factory CoverPhoto.fromJson(Map<String, dynamic> json) => CoverPhoto(
        id: json["id"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        promotedAt: json["promoted_at"],
        width: json["width"],
        height: json["height"],
        color: json["color"],
        blurHash: json["blur_hash"],
        description: json["description"],
        altDescription: json["alt_description"],
        urls: Urls.fromJson(json["urls"]),
        links: ResultLinks.fromJson(json["links"]),
        likes: json["likes"],
        likedByUser: json["liked_by_user"],
        currentUserCollections: json["current_user_collections"] == null
            ? []
            : List<dynamic>.from(
                json["current_user_collections"]!.map((x) => x)),
        sponsorship: json["sponsorship"],
        topicSubmissions: json["topic_submissions"].toString(),
        user: User.fromJson(json["user"]),
        premium: json["premium"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt.toString(),
        "updated_at": updatedAt.toString(),
        "promoted_at": promotedAt,
        "width": width,
        "height": height,
        "color": color,
        "blur_hash": blurHash,
        "description": description,
        "alt_description": altDescription,
        "urls": urls!.toJson(),
        "links": links!.toJson(),
        "likes": likes,
        "liked_by_user": likedByUser,
        "current_user_collections": currentUserCollections == null
            ? []
            : List<dynamic>.from(currentUserCollections!.map((x) => x)),
        "sponsorship": sponsorship,
        "topic_submissions": topicSubmissions.toString(),
        "user": user!.toJson(),
        "premium": premium,
      };
}

class Urls {
  Urls({
    required this.raw,
    required this.full,
    required this.regular,
    required this.small,
    required this.thumb,
    required this.smallS3,
  });

  String? raw;
  String? full;
  String? regular;
  String? small;
  String? thumb;
  String? smallS3;

  Urls copyWith({
    String? raw,
    String? full,
    String? regular,
    String? small,
    String? thumb,
    String? smallS3,
  }) =>
      Urls(
        raw: raw ?? this.raw,
        full: full ?? this.full,
        regular: regular ?? this.regular,
        small: small ?? this.small,
        thumb: thumb ?? this.thumb,
        smallS3: smallS3 ?? this.smallS3,
      );

  factory Urls.fromJson(Map<String, dynamic> json) => Urls(
        raw: json["raw"],
        full: json["full"],
        regular: json["regular"],
        small: json["small"],
        thumb: json["thumb"],
        smallS3: json["small_s3"],
      );

  Map<String, dynamic> toJson() => {
        "raw": raw,
        "full": full,
        "regular": regular,
        "small": small,
        "thumb": thumb,
        "small_s3": smallS3,
      };
}

class User {
  User({
    required this.id,
    required this.updatedAt,
    required this.username,
    required this.name,
    required this.firstName,
    required this.lastName,
    required this.twitterUsername,
    required this.portfolioUrl,
    required this.bio,
    required this.location,
    required this.links,
    required this.profileImage,
    required this.instagramUsername,
    required this.totalCollections,
    required this.totalLikes,
    required this.totalPhotos,
    required this.acceptedTos,
    required this.forHire,
    required this.social,
  });

  String? id;
  DateTime? updatedAt;
  String? username;
  String? name;
  String? firstName;
  String? lastName;
  String? twitterUsername;
  String? portfolioUrl;
  String? bio;
  String? location;
  UserLinks? links;
  String? profileImage;
  String? instagramUsername;
  int? totalCollections;
  int? totalLikes;
  int? totalPhotos;
  bool? acceptedTos;
  bool? forHire;
  String? social;

  User copyWith({
    String? id,
    DateTime? updatedAt,
    String? username,
    String? name,
    String? firstName,
    String? lastName,
    String? twitterUsername,
    String? portfolioUrl,
    String? bio,
    String? location,
    UserLinks? links,
    String? profileImage,
    String? instagramUsername,
    int? totalCollections,
    int? totalLikes,
    int? totalPhotos,
    bool? acceptedTos,
    bool? forHire,
    String? social,
  }) =>
      User(
        id: id ?? this.id,
        updatedAt: updatedAt ?? this.updatedAt,
        username: username ?? this.username,
        name: name ?? this.name,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        twitterUsername: twitterUsername ?? this.twitterUsername,
        portfolioUrl: portfolioUrl ?? this.portfolioUrl,
        bio: bio ?? this.bio,
        location: location ?? this.location,
        links: links ?? this.links,
        profileImage: profileImage ?? this.profileImage,
        instagramUsername: instagramUsername ?? this.instagramUsername,
        totalCollections: totalCollections ?? this.totalCollections,
        totalLikes: totalLikes ?? this.totalLikes,
        totalPhotos: totalPhotos ?? this.totalPhotos,
        acceptedTos: acceptedTos ?? this.acceptedTos,
        forHire: forHire ?? this.forHire,
        social: social ?? this.social,
      );

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        updatedAt: DateTime.parse(json["updated_at"]),
        username: json["username"],
        name: json["name"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        twitterUsername: json["twitter_username"],
        portfolioUrl: json["portfolio_url"],
        bio: json["bio"],
        location: json["location"],
        links: UserLinks.fromJson(json["links"]),
        profileImage: json["profile_image"].toString(),
        instagramUsername: json["instagram_username"],
        totalCollections: json["total_collections"],
        totalLikes: json["total_likes"],
        totalPhotos: json["total_photos"],
        acceptedTos: json["accepted_tos"],
        forHire: json["for_hire"],
        social: json["social"].toString(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "updated_at": updatedAt?.toIso8601String(),
        "username": username,
        "name": name,
        "first_name": firstName,
        "last_name": lastName,
        "twitter_username": twitterUsername,
        "portfolio_url": portfolioUrl,
        "bio": bio,
        "location": location,
        "links": links!.toJson(),
        "profile_image": profileImage.toString(),
        "instagram_username": instagramUsername,
        "total_collections": totalCollections,
        "total_likes": totalLikes,
        "total_photos": totalPhotos,
        "accepted_tos": acceptedTos,
        "for_hire": forHire,
        "social": social.toString(),
      };
}

class UserLinks {
  UserLinks({
    required this.self,
    required this.html,
    required this.photos,
    required this.likes,
    required this.portfolio,
    required this.following,
    required this.followers,
  });

  String? self;
  String? html;
  String? photos;
  String? likes;
  String? portfolio;
  String? following;
  String? followers;

  UserLinks copyWith({
    String? self,
    String? html,
    String? photos,
    String? likes,
    String? portfolio,
    String? following,
    String? followers,
  }) =>
      UserLinks(
        self: self ?? this.self,
        html: html ?? this.html,
        photos: photos ?? this.photos,
        likes: likes ?? this.likes,
        portfolio: portfolio ?? this.portfolio,
        following: following ?? this.following,
        followers: followers ?? this.followers,
      );

  factory UserLinks.fromJson(Map<String, dynamic> json) => UserLinks(
        self: json["self"],
        html: json["html"],
        photos: json["photos"],
        likes: json["likes"],
        portfolio: json["portfolio"],
        following: json["following"],
        followers: json["followers"],
      );

  Map<String, dynamic> toJson() => {
        "self": self,
        "html": html,
        "photos": photos,
        "likes": likes,
        "portfolio": portfolio,
        "following": following,
        "followers": followers,
      };
}

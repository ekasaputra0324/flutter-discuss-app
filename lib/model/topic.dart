import 'user.dart';

class Topic {
    Topic({
        required this.id,
        required this.title,
        required this.description,
        required this.images,
        required this.createdAt,
        required this.updateAt,
        this.user,
    });

    String id;
    String title;
    String description;
    String images;
    String createdAt;
    String updateAt;
    User? user;

    factory Topic.fromJson(Map<String, dynamic> json) => Topic(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        images: json["images"],
        createdAt: json["created_at"],
        updateAt: json["update_at"],
        user: json['user']==null?null : User.fromJson(json["user"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "images": images,
        "created_at": createdAt,
        "update_at": updateAt,
    };
}
import 'user.dart';

class Comment {
    Comment({
        required this.id,
        required this.idTopic,
        required this.fromIdUser,
        required this.toIdUser,
        required this.description,
        required this.createdAt,
        required this.updateAt,
        required this.fromUser,
        required this.toUser,
    });

    String id;
    String idTopic;
    String fromIdUser;
    String toIdUser;
    String description;
    String createdAt;
    String updateAt;
    User fromUser;
    User toUser;

    factory Comment.fromJson(Map<String, dynamic> json) => Comment(
        id: json["id"],
        idTopic: json["id_topic"],
        fromIdUser: json["from_id_user"],
        toIdUser: json["to_id_user"],
        description: json["description"],
        createdAt: json["created_at"],
        updateAt: json["update_at"],
        fromUser: User.fromJson(json["from_user"]),
        toUser: User.fromJson(json["to_user"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "id_topic": idTopic,
        "from_id_user": fromIdUser,
        "to_id_user": toIdUser,
        "description": description,
        "created_at": createdAt,
        "update_at": updateAt,
        "from_user": fromUser.toJson(),
        "to_user": toUser.toJson(),
    };
}
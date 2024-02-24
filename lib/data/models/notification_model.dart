<<<<<<< HEAD
// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

enum NotificationType { newSession, removeSession, modifySession, information }

class NotificationModel {
  final String title;
  final String subtitle;
  final NotificationType type;
  NotificationModel({
    required this.title,
    required this.subtitle,
    required this.type,
  });

  NotificationModel copyWith({
    String? title,
    String? subtitle,
    NotificationType? type,
  }) {
    return NotificationModel(
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'subtitle': subtitle,
      'type': '', //type.toMap(),
    };
  }

  factory NotificationModel.fromMap(Map<String, dynamic> map) {
    return NotificationModel(
        title: map['title'] as String,
        subtitle: map['subtitle'] as String,
        type: ''
            as NotificationType //NotificationType.fromMap(map['type'] as Map<String, dynamic>),
        );
  }

  String toJson() => json.encode(toMap());

  factory NotificationModel.fromJson(String source) =>
      NotificationModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'NotificationModel(title: $title, subtitle: $subtitle, type: $type)';

  @override
  bool operator ==(covariant NotificationModel other) {
    if (identical(this, other)) return true;

    return other.title == title &&
        other.subtitle == subtitle &&
        other.type == type;
  }

  @override
  int get hashCode => title.hashCode ^ subtitle.hashCode ^ type.hashCode;
}
=======
class NotificationModel{}
>>>>>>> refs/remotes/origin/main

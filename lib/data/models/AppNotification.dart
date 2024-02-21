// ignore_for_file: public_member_api_docs, sort_constructors_first
/*import 'dart:convert';

enum NotificationType { newSession, removeSession, modifySession, information }

class AppNotification {
  final String title;
  final String subtitle;
  final NotificationType type;
  AppNotification({
    required this.title,
    required this.subtitle,
    required this.type,
  });
  final DateTime datetime = DateTime.now();

  AppNotification copyWith({
    String? title,
    String? subtitle,
    NotificationType? type,
  }) {
    return AppNotification(
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'subtitle': subtitle,
      'type': type.toString(), //! Why not use type.toMap()
    };
  }

  factory AppNotification.fromMap(Map<String, dynamic> map) {
    return AppNotification(
      title: map['title'] as String,
      subtitle: map['subtitle'] as String,
      //! Why not use NotificationType.fromMap()
      type: map['type'] as NotificationType,
    );
  }

  String toJson() => json.encode(toMap());

  factory AppNotification.fromJson(String source) =>
      AppNotification.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'AppNotification(title: $title, subtitle: $subtitle, type: $type)';

  @override
  bool operator ==(covariant AppNotification other) {
    if (identical(this, other)) return true;

    return other.title == title &&
        other.subtitle == subtitle &&
        other.type == type;
  }

  @override
  int get hashCode => title.hashCode ^ subtitle.hashCode ^ type.hashCode;
}*/

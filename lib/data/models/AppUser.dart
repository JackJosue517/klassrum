// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AppUser {
  final String uid;
  final String username;
  final String firstname;
  final String lastname;
  final String email;
  final String pic;
  AppUser({
    required this.uid,
    required this.username,
    required this.firstname,
    required this.lastname,
    required this.email,
    required this.pic,
  });
  

  AppUser copyWith({
    String? uid,
    String? username,
    String? firstname,
    String? lastname,
    String? email,
    String? pic,
  }) {
    return AppUser(
      uid: uid ?? this.uid,
      username: username ?? this.username,
      firstname: firstname ?? this.firstname,
      lastname: lastname ?? this.lastname,
      email: email ?? this.email,
      pic: pic ?? this.pic,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uid': uid,
      'username': username,
      'firstname': firstname,
      'lastname': lastname,
      'email': email,
      'pic': pic,
    };
  }

  factory AppUser.fromMap(Map<String, dynamic> map) {
    return AppUser(
      uid: map['uid'] as String,
      username: map['username'] as String,
      firstname: map['firstname'] as String,
      lastname: map['lastname'] as String,
      email: map['email'] as String,
      pic: map['pic'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AppUser.fromJson(String source) => AppUser.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AppUser(uid: $uid, username: $username, firstname: $firstname, lastname: $lastname, email: $email, pic: $pic)';
  }

  @override
  bool operator ==(covariant AppUser other) {
    if (identical(this, other)) return true;
  
    return 
      other.uid == uid &&
      other.username == username &&
      other.firstname == firstname &&
      other.lastname == lastname &&
      other.email == email &&
      other.pic == pic;
  }

  @override
  int get hashCode {
    return uid.hashCode ^
      username.hashCode ^
      firstname.hashCode ^
      lastname.hashCode ^
      email.hashCode ^
      pic.hashCode;
  }
}

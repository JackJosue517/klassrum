// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final String uid;
  final String username;
  final String firstname;
  final String lastname;
  final String email;
  final String password;
  final String pic;
  const UserModel({
    required this.uid,
    required this.username,
    required this.firstname,
    required this.lastname,
    required this.email,
    required this.password,
    required this.pic,
  });

  UserModel copyWith({
    String? uid,
    String? username,
    String? firstname,
    String? lastname,
    String? email,
    String? password,
    String? pic,
  }) {
    return UserModel(
      uid: uid ?? this.uid,
      username: username ?? this.username,
      firstname: firstname ?? this.firstname,
      lastname: lastname ?? this.lastname,
      email: email ?? this.email,
      password: password ?? this.password,
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
      'password': password,
      'pic': pic,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map['_id'] as String,
      username: map['username'] as String,
      firstname: map['firstname'] as String,
      lastname: map['lastname'] as String,
      email: map['email'] as String,
      password: map['password'] as String,
      pic: '', //map['pic'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(uid: $uid, username: $username, firstname: $firstname, lastname: $lastname, email: $email, password: $password, pic: $pic)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.uid == uid &&
        other.username == username &&
        other.firstname == firstname &&
        other.lastname == lastname &&
        other.email == email &&
        other.password == password &&
        other.pic == pic;
  }

  @override
  int get hashCode {
    return uid.hashCode ^
        username.hashCode ^
        firstname.hashCode ^
        lastname.hashCode ^
        email.hashCode ^
        password.hashCode ^
        pic.hashCode;
  }

  @override
  List<Object?> get props => [uid];
}

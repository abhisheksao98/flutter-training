const String userlogin = "login";

class UserId {
  static const String id = '_id';
  static const String userName = 'userName';
  static const String password = 'password';

  static final List<String> values = [
    id,
    userName,
    password,
  ];
}

class User {
  final int? id;
  final String userName;
  final String password;

  User({this.id, required this.userName, required this.password});

  User copy({int? id, String? userName, String? password}) => User(
        id: id ?? this.id,
        userName: userName ?? this.userName,
        password: password ?? this.password,
      );
  static User fromJson(Map<String, Object?> json) => User(
        id: json[UserId.id] as int?,
        userName: json[UserId.userName] as String,
        password: json[UserId.password] as String,
      );

  Map<String, Object?> toJson() => {
        UserId.id: id,
        UserId.userName: userName,
        UserId.password: password,
      };
}

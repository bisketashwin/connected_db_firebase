import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';
import 'dart:convert';

part 'user_model.g.dart';

@JsonSerializable(explicitToJson: true)
class User {
  String id;
  String username;
  String password;
  String name;
  List<String> phoneNumbers;
  List<String> commodityTicketIds;

  User({
    required this.id,
    required this.username,
    required this.password,
    required this.name,
    this.phoneNumbers = const [],
    this.commodityTicketIds = const [],
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

class UserController extends ChangeNotifier {
  final List<User> _users = [];
  final Uuid _uuid = const Uuid();

  List<User> get users => _users;

  // Add a function to generate a unique ID for a new commodity ticket.
  String generateUniqueId() {
    return _uuid.v4();
  }

  // Add a function to create a new commodity ticket.
  void addUser(User user) {
    _users.add(user);
    notifyListeners();
  }

  // Add a function to serialize a User object to JSON.
  String serializeUserToJson(User user) {
    return jsonEncode(user.toJson());
  }

  // Add a function to deserialize a JSON string to a User object.
  User deserializeUserFromJson(String json) {
    return _$UserFromJson(jsonDecode(json));
  }

  // Add a function to edit a commodity ticket.
  void editUser(User user) {
    _users[_users.indexOf(user)] = user;
    notifyListeners();
  }

  // Add a function to delete a commodity ticket.
  void deleteUser(User user) {
    _users.remove(user);
    notifyListeners();
  }
}

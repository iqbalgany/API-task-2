class UserModel {
  final int id;
  final String name;
  final String email;
  final String? emailVerifiedAt;
  final String? role;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    this.emailVerifiedAt,
    this.role,
    this.createdAt,
    this.updatedAt,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"] ?? 0,
        name: json["name"] ?? 'No Name',
        email: json["email"] ?? 'No Email',
        emailVerifiedAt: json["email_verified_at"] ?? '',
        role: json["role"] ?? 'No role',
        createdAt: json["created_at"] != null
            ? DateTime.tryParse(json["created_at"])
            : null,
        updatedAt: json["updated_at"] != null
            ? DateTime.tryParse(json["updated_at"])
            : null,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "email_verified_at": emailVerifiedAt,
        "role": role,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}

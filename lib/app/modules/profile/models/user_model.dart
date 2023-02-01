class UserModel {
  String name;
  final String email;
  String? urlImage;

  UserModel({
    required this.name,
    required this.email,
    this.urlImage,
  });

  String get initials {
    String text = '';
    for (String str in name.split(' ')) {
      text += str[0];
    }
    return text;
  }
}

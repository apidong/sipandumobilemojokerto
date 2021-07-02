class User {
  String? nama;

  User();

  User.fromJson(Map<String, dynamic> json) : nama = json['name'];

  Map<String, dynamic> toJson() => {
        'nama': nama,
      };
}

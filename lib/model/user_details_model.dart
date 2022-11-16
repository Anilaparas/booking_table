class UserDetailsModel {
  String? mobileNumber;
  String? token;
  UserDetailsModel({this.mobileNumber, this.token});

  factory UserDetailsModel.fromMap(Map<String, dynamic> json) =>
      UserDetailsModel(
          mobileNumber: json['mobileNumber'], token: json['token']);
}

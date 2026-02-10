class LoginRequestEntity{
  int? type;
  String? name;
  String? description;
  String? email;
  String? phonr;
  String? avatar;
  String? open_id;
  int? online;

  LoginRequestEntity({this.type, this.name, this.description, this.email, this.phonr, this.avatar, this.open_id});
}
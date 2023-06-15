
class UserColumn {

  UserColumn({
    required this.id,
    required this.password,
    required this.createTime,
    required this.loginCount
  });

  //int seq; 자동적으로 들어가는게 없으면 추가해야 함.
  String id;
  String password;
  DateTime createTime;
  int loginCount;


}
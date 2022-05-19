class loginscreen{
  late bool states;
  late String massege;
  late userdata data;
  loginscreen.fromjson(Map<String, dynamic> json)
  {
    states = json['states'];
    massege = json['massege'];
    data = (json['data'] !=null ? userdata.fromjson(json['data']) :  null)!;

  }
}
class userdata
{
  late String uId;
  late String name;
  late String email;
  late String password;
  late String phone;
  late String image;

  late String age;
  userdata({
    required this.email,

    required this.phone,
    required this.image,
    required this.age,
    required this.uId,
    required this.name,
    required this.password ,
  });
  userdata.fromjson(Map<String, dynamic> json)
  {
    uId = json['uId'];
    name = json['name'];
    email = json['email'];
    password = json ['password'];
    phone = json['phone'];
    image = json ['image'];

    age = json [ ' age'];
  }
  Map<String, dynamic> toMap()
  {
    return {
      "uId": uId,
      "name": name,
      "email": email,
      "phone": phone,
      "age": age,
    };
  }
}
class links{
  late String videourl ;
  late String coursename;
  late DateTime time ;
  links({required this.videourl,
  required this.coursename,
    required this.time,
  }
);
  links.fromjson(Map<String, dynamic> json)
  {
    videourl  = json['videourl'];
    coursename = json['coursename'];
    time = json ['time'];

  }
  Map<String, dynamic> toMap() {
    return {
      "videourl": videourl,
      "coursename": coursename,
      "time": time,

    };
  }
}
class UsersModel{
  List<UserModel>? userList;
  UsersModel.fromJson(Map<String,dynamic>json){
    userList=[];
    json['data'].forEach((element) {
      userList!.add(UserModel.fromJson(element));
    });
  }
}
class UserModel{
  int? id;
  String? title ;
  dynamic price;
  String? category  ;
  String? image  ;
  String? descriptioin ;
  dynamic rate;
  int? count;
  UserModel.fromJson(Map<String,dynamic>json){
    id=json['id'];
    title=json['title'];
    price=json['price'];
    image=json['image'];
    category=json['category'];
    descriptioin=json['description'];
    rate=Rating.fromJson(json['rating']);

  }


}

class Rating{
  dynamic rate;
  int? count;
  Rating.fromJson(Map<String,dynamic>json){
    rate=json['rate'];
    count=json['count'];
  }

}
//"id": 7,
//   "email": "michael.lawson@reqres.in",
//   "first_name": "Michael",
//   "last_name": "Lawson",
//   "avatar": "https://reqres.in/img/faces/7-image.jpg"

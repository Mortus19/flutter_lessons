void registred({String ? name , int ? speed}){
  Car MyCar = Car();
  MyCar.name = name ?? MyCar.name;
  MyCar.speed = speed ?? MyCar.speed;
  MyCar.ToPrint(); //(4.2)
}
Car registred2({String ? name , int ? speed}){
  Car MyCar = Car();
  MyCar.name = name ?? MyCar.name;
  MyCar.speed = speed ?? MyCar.speed;
  return MyCar;
}
List<Car> registred3({String ? name1 , int ? speed1,String ? name2 , int ? speed2, String ? name3 , int ? speed3,}){
  Car car1 = Car();
  Car car2 = Car();
  Car car3 = Car();
  car1.name = name1 ?? car1.name;
  car1.speed = speed1 ?? car1.speed;
  car2.name = name2 ?? car2.name;
  car2.speed = speed2 ?? car2.speed;
  car3.name = name3 ?? car3.name;
  car3.speed = speed3 ?? car3.speed;
  List<Car> ans = [car1,car2,car3];
  return ans;
}

class Car{
  int speed = 0;
  String name = "None";
  void ToPrint() {
    print("Name:${name}");
    print("Speed:${speed}");
  }
  Car({this.speed = 0 , this.name = ""});
  Car.bomj_only({this.speed = 0, this.name = "Бомжатник"}){
    print("Создалась карета для бомжар");
  }
}


import 'package:flutter/material.dart';
String ans = "";
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
    // print("Name:${name}");
    // print("Speed:${speed}");
    ans+="Name:${name}\n";
    ans+="Speed:${speed}\n";
    ans+="-----------------\n";
  }
  Car({this.speed = 0 , this.name = ""});
  Car.bomj_only({this.speed = 0, this.name = "Бомжатник"}){
    print("Создалась карета для бомжар");
  }
}

class SecondScreeen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.deepOrangeAccent , centerTitle: true , title: Text("Чёт мучу!")),
      body: Text(ans),);
  }
}
class ThreeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ThreeScreen();
  }
}
class _ThreeScreen extends State<ThreeScreen>{

  int _choose = 0;
  String message = "Жми на кнопку!";
  String mytitle = "Стартовая страница";
  // @override
  // void initState(){
  //   _choose = 0;
  //   message = "Жми на кнопку!";
  //   super.initState();
  // }
  void _change(){
    setState(() {
      _choose++;
      _choose%=3;
      if(_choose==0) {
        message = "Жми на кнопку!";
        mytitle = "Стартовая страница";
      }
      if(_choose== 1) {
        mytitle = "Страница с информацией";
        message = "Красава! Больше не жми :)\n";
        message += ans;
      }
      if(_choose==2) {
        mytitle = "Ну эт пздц";
        message = "Ты Durachek? Тебе же сказали!";
      }
    });
  }
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
            title: Text(
                mytitle,
                style: TextStyle(color: Colors.white)
            ),
            backgroundColor: Colors.blueAccent,
            centerTitle: true
        ),
        backgroundColor: Colors.blue,
        body: Center(
            child:SingleChildScrollView(
              child:
                Text(
                message,
                style: TextStyle(color: Colors.white , fontSize: 30,)
                ),
            )
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: _change,
            tooltip: 'Change',
            child: const Icon(Icons.change_circle),
        ),
      );
  }


}
import 'country..dart';
import 'problem.dart';

class City extends Country with Problems {
  City() : super("Berne","cow");

  void callSuper(){
        print("City : " + super.city);
    super.callHello();
  }
  @override
  String callAnimal(){
    return "cow";
  }
}
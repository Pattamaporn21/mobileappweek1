import 'city.dart';


void main() {
print("Hello word");

//Country item = new Country.swit("Berne","cow");

//print("Wecome to " + item.country) ;
//item.callHello();
//print("City : " + item.city);

//print(item.callAnimal ());
//print ("color :" + Country.color);
var order = City();
print ("welcome to " + order.country);
order.callSuper();
print(order.callAnimal());
order.callProblem();
}
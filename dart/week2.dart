void main() {
  //print (callGen(1999));

 // var x = callColor("black");
 // print(x);
 callwed("google" , protocal: "https", port: 443);
}

String callGen(int year) => (year >= 1996) ? "Gen Z" : "Gen Y";
/******Test1*********/

int callColor([String newColor = "pink"]) {

  List<dynamic> color = ["red", "blue", "green"];

  color.add(newColor);

  for (var item in color) {
    print(item);
  }
  return color.length;
}
void callwed(String web ,{int port =80 , String protocal ="http"}) => print(" $protocal $web : $port");


void main() {
  //print (callGen(1999));

 // var x = callColor("black");
 // print(x);
 //เรียกใช้ function , สามารถใส่ตัวไหนก็ได้ไม่จำเป็นต้องเรียง
 callwed("google" , protocal: "https", port: 443);
}

String callGen(int year) => (year >= 1996) ? "Gen Z" : "Gen Y";
//

int callColor([String newColor = "pink"]) {

  List<dynamic> color = ["red", "blue", "green"];

  color.add(newColor);
//คำสั่ง forin ทำซ้ำร่วมกับ list array
  for (var item in color) { 
    print(item);
  }
  return color.length;
}
//เรียกใช้ function Arrow , การใช้ Named parameter,และ setค่าเริ่มต้น
void callwed(String web ,{int port =80 , String protocal ="http"}) => print(" $protocal $web : $port");


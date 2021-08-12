class Country{
  /*pp */
  var country ="Switzerland";
  var city;
  var _animal ="bird";
  static var color = "RED";
 /*con หลัก*/
  Country(this.city,this._animal);
  /*re */
  Country.swit(String city,String  animal) : this(city,animal);
 
  void callHello(){
    print("say Hi");
  }
  String callAnimal(){
    return  this._animal;
  }
}

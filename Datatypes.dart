void main(){
  String greetings = "Good Evening";
  String name = "Joshua";
  int apples = 5;
  print("${greetings}, ${name}!");

  double someDouble = 5.567;
  print(someDouble.round());

  print("I have $apples apples");
  // print("I have + apples.toString() + apples");
  print("I have ${apples.toString()} apples");

  // String util methods
  print('Never odd or even'.contains('odd'));
  print('Never odd or even'.startsWith('Never'));
  print('hello devs'.toUpperCase());
  print(''.isEmpty);
 

//  Booleans
bool isLocationEnabled = false;

if (!isLocationEnabled) {
  checkCurrentLocation();
} else{
  
}
    // ignore: dead_code
    // return "Location Services Enabled";

}

void checkCurrentLocation() {
}

class Items {
  int count = 5;
}
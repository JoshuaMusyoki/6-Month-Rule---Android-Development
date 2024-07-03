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

  print(bookTitles);
  print(bookTitles.runtimeType);

//  Booleans
bool isLocationEnabled = false;

if (!isLocationEnabled) {
  checkCurrentLocation();
} else{

}
    // ignore: dead_code
    // return "Location Services Enabled";

}

// lists
List bookTitles = ["Harry Potter", "Twilight", "XYZ"];
// bookTitles.add(2);
List prices = [3000, 2345.50, 0, 1500.55];


void checkCurrentLocation() {
}

class Items {
  int count = 5;
}
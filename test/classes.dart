void main(){
  Person learner = new Person(age: 40, name: "Mr. Doe");
  Person learner2 = new Person(age: 40, name: "Mr. Doe");
  Person learner3 = new Person.withIdentity(age: 40, name: "Mr. Doe", identificationNUmber: "12345678890");
  // learner.name = "Pooj";
  print("The Learner, ${learner.name} is ${learner.age} Years Old.");
  print("The Learner 3 Details are:\n Name: ${learner3.name},\n Age: ${learner3.age},\n Identification Number: ${learner3.identificationNUmber},\n IsAlive: ${learner3.livingStatus}");
  print("\n");
  learner2.updateLivingStatus = false;
  learner3.updateLivingStatus = true;
  print(learner2.livingStatus);
  print(learner3.livingStatus);
}

class Person{
  final String name;
  int? age;
  bool _isAlive = true;
  late final String identificationNUmber; //tells the compiler that the initialization of the variable will be done later.
  bool get livingStatus {
    return _isAlive;
  }

  set updateLivingStatus(bool status){
    _isAlive = status;
  }

// ---Wrong Method of declaring constructors
  // Person(String name, int age){
  //   this.name = name;
  //   this.age = age;
  //   this.a = a;
  //   this.b = b;
  // }

// ---Right one
Person ({required this.name, this.age});

// Doing multiple constructors with same constructor name --- use .withIdentity method
Person.withIdentity({required this.name, this.age, required this.identificationNUmber});

}
// class parent{
//   void parentMethod(){
//     print("I am parent method");
//   }
// }

// class child extends parent{
//   void childMethod(){
//     print("I am child method");
//   }
// }

// void main(){

//   print("Inheritence ");
// child mychild = new child();
//   mychild.parentMethod();
//   mychild.childMethod();
// }

import 'dart:async';
import 'dart:io'
;
class Animal{
String? animalName;
String? animalBreed;
String? animalFood;
String? animalSleep;
String? animalSound;


void Breed(){
  print("${animalName} Breed is: ${animalBreed}");

}
void sleep(){
print("${animalName} sleeps ${animalSleep} hours a day");
}
void sound(){
print("${animalName} sounds like ${animalSound}");
}
void eat(){
print("${animalName} eats ${animalFood}");
}
}
class cat extends Animal{
  void CatInfo(){
  print("${animalName} is ${animalBreed}");
  }

}
void main(){
print("Animal info");

print("Enter Your Animal Name");
  String? name = stdin.readLineSync() ??"no name Provided";

print("Enter Your Animal Name");
  String? breed = stdin.readLineSync() ??"no breed Provided";

print("Enter Your Animal Name");
  String? food = stdin.readLineSync() ??"no food name Provided";

print("Enter Your Animal Name");
  String? sleep = stdin.readLineSync() ??"no skeep hours Provided";

print("Enter Your Animal Name");
  String? sound = stdin.readLineSync() ??"no sound Provided";

cat mycat = new cat();

  mycat.animalName = name;
  mycat.animalBreed = breed;
  mycat.animalFood = food;
  mycat.animalSleep = sleep;
  mycat.animalSound = sound;


  mycat.CatInfo();
  mycat.Breed();
  mycat.eat();
  mycat.sound();
  mycat.sleep();
}
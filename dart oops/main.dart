import 'dart:io';
class car{
    String? carName;
    int? carModel;

void displayCarInfo(){
    print("Car name is $carName and Car model is $carModel");

}
}

void main(){

print("Enter Your Car Name");
String userCarName = stdin.readLineSync()?? "No Car Name Provided";
print("Enter Your Car Model");
int userCarModel = int.parse( stdin.readLineSync()?? "No Car Model Provided");

car mycar = new car();
mycar.carName = userCarName;
mycar.carModel = userCarModel;


mycar.displayCarInfo();
}
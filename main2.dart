
import 'dart:io';

void main(){
  List<String> subject = ["English","Urdu","Math","PST","Science"];
  List<double> marks = [];
  for(int i = 0 ; i <= subject.length;i++){
    if(i < subject.length){
      print("Enter marks for ${subject[i]}:");
      double mark = double.parse(stdin.readLineSync() ?? "0.0");
      marks.add(mark);
    }else{
      break;
    }
  }
  double sum = 0.0;
  for(double mark in marks){
    sum += mark;
  }
  print("Total Obtain Marks is $sum");
}
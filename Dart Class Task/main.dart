import 'dart:io';
//owais aslam//
class empInfo{
    String? employeeName;
    String? employeeDesignition;
    double? employeeSalary;
    double? employeeTax;
    double? employeeTotalSalary;
    void displayEmpInfo(){
        print("Employee Name is: $employeeName");
        print("Employee DEsignition is: $employeeDesignition");
        print("Employee salary is : $employeeSalary");
        print("Tax deducted: $employeeTax");
        print("Employee Total Salary is: $employeeTotalSalary");

    }
}
void main(){
print("Enter Your Name");
String name = stdin.readLineSync() ?? "No Name Given";
print("Enter Your Designition");
String designition = stdin.readLineSync() ?? "No designition Given";
print("Enter Your Salary");
double  salary = double.parse(stdin.readLineSync() ?? "33000");

  double tax = 0.0; // Initialize tax
  double totalSalary = salary; // Initialize total salary with the full salary

if(salary >= 100000 && salary <= 150000){
  tax = salary * 0.10;
   totalSalary = salary - tax;
}else{
    print("you are safe from tax");
}
 empInfo employee = new empInfo();
 employee.employeeName = name;
 employee.employeeDesignition = designition;
 employee.employeeSalary = salary;
 employee.employeeTax = tax;
 employee.employeeTotalSalary = totalSalary;
employee.displayEmpInfo();
}
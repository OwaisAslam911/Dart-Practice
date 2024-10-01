import 'dart:io';

class Student {
  int stdId;
  String name;
  String email;
  int studentClass;

  Student(this.stdId, this.name, this.email, this.studentClass);

  void displayInfo() {
    print("Student ID: $stdId");
    print("Student Name: $name");
    print("Student Email: $email");
    print("Student Class: $studentClass");
  }
}

class Marksheet extends Student {
  List<String> subjects;
  List<double> marks;

  Marksheet(int stdId, String name, String email, int studentClass, this.subjects)
      : marks = [],
        super(stdId, name, email, studentClass);

  void enterMarks() {
    for (var subject in subjects) {
      while (true) {
        print("Enter Your Marks for Subject $subject:");
        double mark = double.parse(stdin.readLineSync() ?? "0.0");

        if (mark < 0 || mark > 100) {
          print("Invalid Marks Entered for Subject $subject: Please enter a valid mark between 0 and 100");
        } else {
          marks.add(mark);
          break; // exit the loop when valid mark is entered
        }
      }
    }
  }

  double calculatePercentage() {
    double sum = marks.reduce((a, b) => a + b);
    double totalMarks = subjects.length * 100; // assuming each subject is out of 100
    return (sum / totalMarks) * 100;
  }

  @override
  void displayInfo() {
    super.displayInfo();
    print("Subjects: ${subjects.join(', ')}");
    print("Marks: ${marks.join(', ')}");
    print("Percentage: ${calculatePercentage().toStringAsFixed(2)}%");
  }
}

void main() {
  print("Enter Your Student Id:");
  int stdId = int.parse(stdin.readLineSync() ?? "0");

  print("Enter Your Name:");
  String studentName = stdin.readLineSync() ?? "unidentified";

  print("Enter Your Email:");
  String email = stdin.readLineSync() ?? "no data provided";

  print("Enter Your Class:");
  int studentClass = int.parse(stdin.readLineSync() ?? "0");

  List<String> subjects = [];
  if (studentClass == 5) {
    subjects = ['Math', 'English', 'Islamiyat', 'Science', 'PST', 'Computer', 'Chemistry'];
  } else if (studentClass == 9) {
    subjects = ['Math', 'English', 'Computer', 'Chemistry', 'Urdu'];
  } else {
    print("Your given class is invalid. Please enter a valid class.");
    return;
  }

  Marksheet studentMarksheet = Marksheet(stdId, studentName, email, studentClass, subjects);
  
  studentMarksheet.enterMarks();
  studentMarksheet.displayInfo();
}

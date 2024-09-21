void main() {
    // var name = "owais";
    // print("MY SELF :"+name);

    // final stdName = "owais aslam";
    // print("MY FULL NAME :"+stdName);

    // const newStd = "ali "
    // print("NEW STUDENT NAME :"+newStd);
    
//EXPLICIT DATA TYPES
double price = 22.3;
print(price);
int age =20;
print(age);
bool isNew = false;
print(isNew);

//TYPE CASTING

double totalPrice = 22.3;
int totalInt = totalPrice.toInt();
print(totalInt);

// NULLABLE TYPES   AND FUNCTIONS

int? nullableInt;
nullableInt = null;
print(nullableInt);

print(nullableInt?? 0);

//LISTS

List<int> numbers = [1,2,3,4,5];
print(numbers);

numbers.add(6);
print(numbers);
}

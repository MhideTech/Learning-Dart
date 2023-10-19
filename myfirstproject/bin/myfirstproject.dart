import 'dart:math';

void main() {
  print("Hello world");

  // Numbers

  // int
  int age = 10;
  print(age);

  // double
  double salary = 50000.00;
  print(salary);

  num noOfLegs = 11.0;
  print(noOfLegs.runtimeType);

  // var
  var name = "Ade";
  print(name);

  var listOfItems = ["Ade", 3, 11];
  print(listOfItems
      .runtimeType); // returns Object if items are of different datatype but the datatype itself if they are the same

  // String
  String address = "I live at Joju";
  String busStop = "Joju";
  print(busStop.allMatches(address));

  // booleans
  bool isBrilliant = true;
  print(isBrilliant);

  // List
  List<String> namesOfGees = ["IB", "Faltom", "dev~inne", "Fred", "Shal-geek"];
  print(namesOfGees);

  List multipleDatatype = ["Mhizta Orlah", 20, true, 50000.50];
  print(multipleDatatype);

  // Map
  Map keyValue = {
    "name": "Mhizta Orlah",
    "age": 18,
    true: "Yes",
    07: "Favorite Number"
  };
  print(keyValue["name"]);
  print(keyValue[true]);

  // Map accepting datatypes
  Map<String, int> subjectScore = {
    "chemistry": 10,
    "physics": 15,
    "math": 18,
  };

  // Map accepting List
  Map<String, List<int>> subjectScoreWithList = {
    "chemistry": [10],
    "physics": [15],
    "math": [18],
  };

  // Map accepting List
  Map<String, Person> subjectScoreWithClass = {
    "chemistry": Person("Ola"),
    "physics": Person("Mide"),
    "math": Person("Orlah"),
  };

  Set<int> nums = {1, 2, 3, 1, 5, 6, 7};
  print(nums);

  // enums

  // Nullables and null safety
  // Null aware operators(?. and ??): tells dart we are trying to create a variable that might be a null
  // Null assertion (!): tells the compiler a nullable value is not null
  String? namee;
  print(namee); // null
  // print(namee!.length); // error (Null check operator used on a null value)

  print(namee?.length ?? 0); // prints zero if namee.length is equals to null

  var person1 = PersonNull("Hephz");
  var person2 = PersonNull.name();
  print(person1.name);
  print(person2.name);

  // 4.8989
  int a = 2;
  int b = 5;
  int c = 3;

  double result = (-b + (sqrt((b * b) - (4 * a * c)))) / (2 * a);
  print(result);


  int d = 15;
  double half = d / 2;
  for (int i = 2; i <= half; i++) {
    if (d % i == 0) {
      print('$d is not a prime number');
      break;
    }

    if (i == (d ~/ 2)) {
      print('$d is a prime number');
      break;
    }
  }

}

class Person {
  String name;

  Person(this.name);
}

// Class with Nullable
class PersonNull {
  String? name;

  PersonNull(this.name);
  PersonNull.name(
      {this.name}); // {} helps to avoid error and print null if argument is absent in the constructor
}

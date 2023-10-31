import 'dart:math';
import 'dart:io';

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

  // Collecting User Input
  // stdout.write('Salary: ');
  // final double input = double.parse(stdin.readLineSync()!);
  // print(input);

  /*
    30/10/2023
    Collections
  */

  // Lists
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8];
  numbers.add(10);
  numbers.insert(2, 90); // inserts a value of 90 at index of 2
  numbers.addAll([
    9,
    10,
    11,
    12,
    13,
    5
  ]); // adds all value in the iterable at the last index
  numbers.insertAll(0, [
    -3,
    -2,
    -1,
    0
  ]); // adds all values in the iterables at the specified index
  numbers.remove(2); // remove the first occurence of a value
  numbers.removeAt(4); // removes the value at the specified index
  print(numbers);
  numbers.removeWhere((nums) =>
      nums ==
      5); // loops over the list and remove every occurence of the value of the callback
  print(numbers);
  numbers.removeRange(0,
      4); // removes the values from starting index to ending index but does not include ending index
  print(numbers);

  // Sets
  Set<String> fruits = {'apple', 'banana', 'pineapple', 'plantain'};
  print(fruits.contains('apple'));
  fruits.add('grape');
  fruits.remove('banana');
  print(fruits);
  print(fruits.length);

  // Maps
  Map<String, int> ages = {'John': 25, 'Dami': 26, 'IB': 27, 'Tomiwa': 28};
  print(ages['John']); // accessing a value using the key John
  ages['Dami'] = 30;
  ages.remove('Tomiwa'); // removes a key-value pair from a map
  print(ages.keys); // print a list of all keys inside a parenthesis
  print(ages.values); // print a list of all values inside a parenthesis
  print(ages);
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

class PersonFunc {
  final String name;
  final int age;
  final bool isSensible;
  int? parentAge;

  PersonFunc({
    required this.name,
    required this.age,
    required this.isSensible,
    required this.parentAge,
  });
}

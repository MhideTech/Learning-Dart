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
}

class Person {
  String name;

  Person(this.name);
}

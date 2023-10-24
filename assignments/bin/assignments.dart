void main() {
  print('Hello world');

  /* 
    10 October 2023
    Create 15 variable: 3 maps, 3 lists, 3 functions and the remaining datatype 
  */
  String name = "John";
  int age = 30;
  double height = 175.5;
  bool isStudent = true;
  num accountBalance = 20.25;
  var salary = 20000.00;

  // Maps
  Map<String, int> myScores = {
    "java": 95,
    "iot": 90,
    "c#": 95,
    "xml": 90,
  };

  Map<String, dynamic> user = {
    "name": "Okefolahan Olamide",
    "email": "olamide@gmail.com",
    "phoneNo": 08039844376,
    "age": 20,
    "friends": ["IB", "Faltom", "dev~inne", "Fredo", "Shal"],
  };

  Map<String, dynamic> appConfig = {
    'theme': 'dark',
    'language': 'English',
    'notifications': true,
  };

  // Lists
  List<String> toDoList = [
    "Code",
    "Eat",
    "Sleep",
    "Interact with gees in school😎"
  ];

  List<String> categories = ["Tech", "Science", "Travel", "Health"];

  List<Map<String, dynamic>> courses = [
    {"id": 1, "name": "Dart"},
    {"id": 2, "name": "Flutter"},
  ];

  // Functions
  void printMessage(String message) {
    print("Message: $message");
  }

  printMessage("My name is Olamide");

  void toUppercase(String text) {
    print("${text.replaceFirst("${text[0]}", "${text[0].toUpperCase()}")}");
  }

  toUppercase("baddo");

  void characterCount(String text) {
    int sum = text.length;
    print("We have $sum number of characters in \"$text\"");
  }

  characterCount("My name is Mhizta Orlah");

  /* 
    11 October 2023
    Objective Questions 
  */

  // What is the difference between a nullable and non-nullable type?
  // ans: nullable and non-nullable types refer to whether a variable can have a value of null or not

  // What are benefits of using null safety?
  // ans: Preventing Null Reference Errors, Fewer Crashes and Exceptions, Community and Industry Standard

  // How do you declare a nullable variable in Dart?
  // ans: you can declare a nullable variable by using the ? modifier after the variable's type i.e. int? age;

  // How do you check if a variable is null?
  // ans: By using condition statement or the null-aware operators (?.) that simplify the process of checking for null values

  // How do you safely access the value of a null variable?
  // ans: you can safely access the value of a potentially null variable by using the null-aware access operator (?.)

  // What is the difference between null and undefined?
  // ans: "null" is a defined value that represents the absence of a value or an intentional lack of data, while "undefined" refers to variables or values that have not been defined or initialized, leading to potential errors or undefined behavior.

  // What is the ! operator and how is it used with nullables?
  // ans: the ! operator, also known as the null assertion operator, is used to assert that a nullable variable is indeed not null at a specific point in your code

  // What is the difference between ? and !.? operators?
  // ans: The ? operator is used for safe access to a property or method of a potentially nullable object while the ! operator, also known as the null assertion operator, is used to assert that a nullable variable is indeed not null

  // What is the ?? operator and how is it used with nullables?
  // the ?? operator is the null-aware coalescing operator. It is used with nullable variables to provide a default value if the variable is null

  // What is the late keyword and how is it used with nullables?
  // the late keyword is used to declare a variable that is initially uninitialized but is guaranteed to be assigned a non-null value before it's accessed.


  /* 
    11 October 2023 
    Create 15 functions of required named, optional named and required positional parameters
  */
}

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
    print("We have $sum number of characters in $text");
  }
  characterCount("My name is Mhizta Orlah");
}

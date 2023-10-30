import 'dart:io';

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
    1. Create 15 functions of required named, optional named and required positional parameters
    2. Recharge card with if-else and switch statement
  */

  printOrder(item: "Widget", price: 12.99);

  printGreeting("Alice"); // Uses the default title.
  printGreeting("Bob", "Dr."); // Provides a custom title.

  sendMail(
      to: 'oladipupoibrahim20@gmail.com',
      subject: 'Application open for Java Developer',
      body:
          'We are in need of a Java Developer with experience with Spring Boot. If this mail finds you well, please do well to send your resume.');

  order(item: 'Laptop', quantity: 5);

  areaOfARectangle(10, 5);

  // stdout.write(
  //   'Welcome to Aptech Network Services. Choose an option to get started. \n1. Buy Airtime \n2. Buy Data \n');
  // final int option = int.parse(stdin.readLineSync()!);
  // if (option == 1) {
  //   stdout.write('Enter an amount: \n');
  //   final int amount = int.parse(stdin.readLineSync()!);
  //   stdout.write('Enter your phone number: \n');
  //   final int number = int.parse(stdin.readLineSync()!);
  //   print(
  //     '$amount naira airtime has been gifted to $number \n Thank you for choosing Mhizta Orlah Mobile Banking App');
  // } else if (option == 2) {
  //   stdout.write(
  //     'Choose a plan \n 1. #100 - 100mb \n 2. #500 - 2.5gb \n 3. #1000 - 1tb \n 4. #1500 - 1tb\n');
  //   final int plan = int.parse(stdin.readLineSync()!);
  //   if (plan == 1) {
  //     stdout.write('Enter your phone number: \n');
  //     final int number = int.parse(stdin.readLineSync()!);
  //     print(
  //       '100mb data has been gifted to $number \n Thank you for choosing Mhizta Orlah Mobile Banking App');
  //   } else if (plan == 2) {
  //     stdout.write('Enter your phone number: \n');
  //     final int number = int.parse(stdin.readLineSync()!);
  //     print(
  //       '2.5gb data has been gifted to $number \n Thank you for choosing Mhizta Orlah Mobile Banking App');
  //   } else if (plan == 3) {
  //     stdout.write('Enter your phone number: \n');
  //     final int number = int.parse(stdin.readLineSync()!);
  //     print(
  //       '1tb data has been gifted to $number \n Thank you for choosing Mhizta Orlah Mobile Banking App');
  //   }  else if (plan == 4) {
  //     stdout.write('Enter your phone number: \n');
  //     final int number = int.parse(stdin.readLineSync()!);
  //     print(
  //       '5tb data has been gifted to $number \n Thank you for choosing Mhizta Orlah Mobile Banking App');
  //   }
  // }

  stdout.write(
      'Welcome to Aptech Network Services. Choose an option to get started. \n1. Buy Airtime \n2. Buy Data \n');
  final int option = int.parse(stdin.readLineSync()!);
  switch (option) {
    case 1:
      stdout.write('Enter an amount: \n');
      final int amount = int.parse(stdin.readLineSync()!);
      stdout.write('Enter your phone number: \n');
      final int number = int.parse(stdin.readLineSync()!);
      print(
          '$amount naira airtime has been gifted to $number \n Thank you for choosing Mhizta Orlah Mobile Banking App');
      break;
    case 2:
      stdout.write(
          'Choose a plan \n 1. #100 - 100mb \n 2. #500 - 2.5gb \n 3. #1000 - 1tb\n');
      final int plan = int.parse(stdin.readLineSync()!);
      switch (plan) {
        case 1:
          stdout.write('Enter your phone number: \n');
          final int number = int.parse(stdin.readLineSync()!);
          print(
              '100mb data has been gifted to $number \n Thank you for choosing Mhizta Orlah Mobile Banking App');
          break;
        case 2:
          stdout.write('Enter your phone number: \n');
          final int number = int.parse(stdin.readLineSync()!);
          print(
              '2.5gb data has been gifted to $number \n Thank you for choosing Mhizta Orlah Mobile Banking App');
          break;
        case 3:
          stdout.write('Enter your phone number: \n');
          final int number = int.parse(stdin.readLineSync()!);
          print(
              '1tb data has been gifted to $number \n Thank you for choosing Mhizta Orlah Mobile Banking App');
          break;
        case 4:
          stdout.write('Enter your phone number: \n');
          final int number = int.parse(stdin.readLineSync()!);
          print(
              '5tb data has been gifted to $number \n Thank you for choosing Mhizta Orlah Mobile Banking App');
          break;
        default:
          print('Invalid option for data plan');
      }
      break;
  }
}

void printOrder({String? item, int? quantity, double? price}) {
  print("Order Details:");
  if (item != null) {
    print("Item: $item");
  }
  if (quantity != null) {
    print("Quantity: $quantity");
  }
  if (price != null) {
    print("Price: \$$price");
  }
}

void printGreeting(String name, [String? title = "Mr."]) {
  print("Hello, $title $name!");
}

void sendMail({required String to, String? subject, required String body}) {
  if (subject != null) {
    print(
        'Mail: $body with a subject of $subject has been sent to $to successfully!');
  } else {
    print('$body has been sent to $to successfully!');
  }
}

void order({required String item, required int quantity}) {
  print(
    'Order complete!. $quantity pieces of $item has been ordered successful. Please wait while we process your delivery...');
}

void register(
    {required String username,
    required String email,
    required String password}) {
  print(
      "Registration successful! Your informations are Username: $username, Email: $email, Password: $password. Thanks for creating a profile with us.");
}

void orderPizza(String type, String size, bool? extraCheese) {
  print('A $size size pizza with type $type has been placed.');
}

void post(String text) {
  print('$text post has been made successfully');
}

void bookings(String eventTitle, String date, int numberOfTickets) {
  print(
      'Mhizta Orlah hotel has been booked for $date with $numberOfTickets tickets for a/an $eventTitle occassion');
}

int areaOfARectangle(int length, int breadth) {
  int area = length * breadth;
  print(
      'Area of a rectangle with sides $length and $breadth is equals to $area');
  return 1;
}

void greeting(String name, {String? greeting}) {
  if (greeting != null) {
    print('$greeting $name 👋👋👋');
  } else {
    print('Hello $name. It\'s nice to have you');
  }
}

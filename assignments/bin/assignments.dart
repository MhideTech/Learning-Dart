import 'dart:io';
import 'dart:math';

import 'package:test/test.dart';

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

  /*
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
  */

  // Assignment 4
  /*
    1. Create a list of string and use all the methods we learnt in class
    2. create a set of integer or double and use all the methods as well
    3. make research on forEach, map, remove and update (map)
  */

  List<String> names = [
    "Olamide",
    "IB",
    "Divine",
    "Tomiwa",
    "Fredrick",
    "Shalom"
  ];
  names.add("Okoh");
  names.insert(names.length, "Esther");
  names.addAll(["Ridwan", "Samson"]);
  names.insertAll(0, ["Mhizta", "Orlah"]);
  names.remove("Mhizta");
  names.removeAt(10);
  names.removeWhere((name) => name == "Ridwan");
  names.removeRange(0, 2);
  print(names);

  Set<int> numbers = {1, 2, 3, 4, 5, 6};
  numbers.add(7);
  numbers.add(8);
  numbers.remove(8);
  numbers.addAll({7, 8, 9});
  print(numbers.contains(6));
  print(numbers);

  BankApp account1 = BankApp();
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

class BankApp {
  String? name;
  int? dateOfBirth;
  int? monthOfBirth;
  int? yearOfBirth;
  int? age;
  int? phoneNumber;
  String? gender;
  double accountBalance = 10000.00;

  int accountNumber = Random().nextInt(10);

  int? pin;

  BankApp() {
    register();
  }

  void register() {
    try {
      stdout.write('Enter your name: ');
      final String userName = stdin.readLineSync()!;
      name = userName;

      try {
        stdout.write('Enter your date of birth: ');
        final int date = int.parse(stdin.readLineSync()!);
        dateOfBirth = date;
      } on FormatException {
        print('Invalid Input, try again');
        stdout.write('Enter your date of birth: ');
        final int date = int.parse(stdin.readLineSync()!);
        dateOfBirth = date;
      } catch (e) {
        print('Something went wrong! Try again');
      }

      try {
        stdout.write('Enter your month of birth: ');
        final int month = int.parse(stdin.readLineSync()!);
        monthOfBirth = month;
      } on FormatException {
        print('Invalid Input, try again');
        stdout.write('Enter your month of birth: ');
        final int month = int.parse(stdin.readLineSync()!);
        monthOfBirth = month;
      } catch (e) {
        print('Something went wrong! Try again');
      }

      try {
        stdout.write('Enter your birth year: ');
        final int year = int.parse(stdin.readLineSync()!);
        yearOfBirth = year;
      } on FormatException {
        print('Invalid Input, try again');
        stdout.write('Enter your birth year: ');
        final int year = int.parse(stdin.readLineSync()!);
        yearOfBirth = year;
      } catch (e) {
        print('Something went wrong! Try again');
      }

      try {
        stdout.write('Enter your phone Number: ');
        final int phoneNo = int.parse(stdin.readLineSync()!);

        if (phoneNo < 7000000000 && phoneNo > 9999999999) {
          print('Invalid phone number, try again');
        } else if (phoneNo > 7000000000 && phoneNo < 9999999999) {
          phoneNumber = phoneNo;
        } else {
          print('Phone Number must be equals to 11 digits');
          stdout.write('Enter your phone Number: ');
          final int phoneNo = int.parse(stdin.readLineSync()!);

          if (phoneNo < 7000000000 && phoneNo > 9999999999) {
            print('Invalid phone number, try again');
          } else if (phoneNo > 7000000000 && phoneNo < 9999999999) {
            phoneNumber = phoneNo;
          } else {
            return;
          }
        }
      } on FormatException {
        print('Phone number is not valid, try again');
        stdout.write('Enter your phone Number: ');
        final int phoneNo = int.parse(stdin.readLineSync()!);

        if (phoneNo < 7000000000 && phoneNo > 9999999999) {
          print('Invalid phone number, try again');
        } else if (phoneNo > 7000000000 && phoneNo < 9999999999) {
          phoneNumber = phoneNo;
        } else {
          print('Phone Number must be equals to 11 digits');
          stdout.write('Enter your phone Number: ');
          final int phoneNo = int.parse(stdin.readLineSync()!);

          if (phoneNo < 7000000000 && phoneNo > 9999999999) {
            print('Invalid phone number, try again');
          } else if (phoneNo > 7000000000 && phoneNo < 9999999999) {
            phoneNumber = phoneNo;
          } else {
            return;
          }
        }
      } catch (e) {
        print('Something went wrong');
      }

      stdout.write('Enter your gender: ');
      final String sex = stdin.readLineSync()!;
      gender = sex;

      if (sex.toLowerCase() == 'male' ||
          sex.toLowerCase() == 'female' ||
          sex.toLowerCase() == 'm' ||
          sex.toLowerCase() == 'f') {
        gender = sex;
      } else {
        print('Invalid gender, try again');
        stdout.write('Enter your gender: ');
        final String sex = stdin.readLineSync()!;
        if (sex.toLowerCase() == 'male' ||
            sex.toLowerCase() == 'female' ||
            sex.toLowerCase() == 'm' ||
            sex.toLowerCase() == 'f') {
          gender = sex;
        } else {
          return;
        }
      }

      age = 2023 - yearOfBirth!;

      if (age! > 18) {
        createPin();
        showDetails();

        try {
          stdout.write(
              'Which operation would you like to perform: \n1. Transfer Money \n2. Buy Data \n3. Change Details \n4. Exit\t');
          final int operation = int.parse(stdin.readLineSync()!);

          if (operation == 1) {
            transfer();
          } else if (operation == 2) {
            buyData();
          } else if (operation == 3) {
            changeDetails();
          } else if (operation == 4) {
            print(
                'Thank you for using our Bank. We\'ll love to have you again');
          } else {
            print('Invalid Option');
          }
        } on FormatException {
          print('Invalid input, try again');
          stdout.write(
              'Which operation would you like to perform: \n1. Transfer Money \n2. Buy Data \n3. Change Details \n4. Exit\t');
          final int operation = int.parse(stdin.readLineSync()!);
          if (operation == 1) {
            transfer();
          } else if (operation == 2) {
            buyData();
          } else if (operation == 3) {
            changeDetails();
          } else if (operation == 4) {
            print(
                'Thank you for using our Bank. We\'ll love to have you again');
          } else {
            print('Invalid Option');
          }
        } catch (e) {
          print('Something went wrong');
        }
      } else {
        print('You cannot proceed with the creation of the bank account.');
      }
    } catch (e) {
      print('Error! Something went wrong');
    }
  }

  void createPin() {
    try {
      stdout.write('Enter a four digit pin: \n');
      int pinInput = int.parse(stdin.readLineSync()!);
      if (pinInput > 1000 && pinInput < 9999) {
        stdout.write('Confirm four digit pin: \n');
        int confirmPinInput = int.parse(stdin.readLineSync()!);

        if (pinInput == confirmPinInput) {
          pin = pinInput;
          print('Your pin as been set successfully');
        } else {
          print('Pin are not the same try again');
        }

        while (pinInput != confirmPinInput) {
          stdout.write('Enter a four digit pin: \n');
          pinInput = int.parse(stdin.readLineSync()!);
          stdout.write('Confirm four digit pin: \n');
          confirmPinInput = int.parse(stdin.readLineSync()!);
        }
      } else {
        print('Pin should not be less or greater than 4 digits');
        stdout.write('Enter a four digit pin: \n');
        int pinInput = int.parse(stdin.readLineSync()!);
        if (pinInput > 1000 && pinInput < 9999) {
          print('yeah');
        } else {
          print('not valid');
          return;
        }
      }
    } on FormatException {
      print('Pin should be a number');
      stdout.write('Enter a four digit pin: \n');
      int pinInput = int.parse(stdin.readLineSync()!);
      if (pinInput > 1000 && pinInput < 9999) {
        print('yeah');
      } else {
        print('Pin should not be less than 4 digits');
        stdout.write('Enter a four digit pin: \n');
        int pinInput = int.parse(stdin.readLineSync()!);
        if (pinInput > 1000 && pinInput < 9999) {
          print('yeah');
        } else {
          return;
        }
      }
      stdout.write('Confirm four digit pin: \n');
      int confirmPinInput = int.parse(stdin.readLineSync()!);

      if (pinInput == confirmPinInput) {
        pin = pinInput;
        print('Your pin as been set successfully');
      } else {
        print('Pin are not the same try again');
      }

      while (pinInput != confirmPinInput) {
        stdout.write('Enter a four digit pin: \n');
        pinInput = int.parse(stdin.readLineSync()!);
        stdout.write('Confirm four digit pin: \n');
        confirmPinInput = int.parse(stdin.readLineSync()!);
      }
    } catch (e) {
      print('Invalid pin');
    }
  }

  void showDetails() {
    print(
        'Hello $name, your account details are as follow:\nDate of birth: $dateOfBirth/$monthOfBirth/$yearOfBirth, \nAge: $age, \nGender: $gender, \nPhone Number: 0$phoneNumber, \nAccount balance: $accountBalance');
  }

  void transfer() {
    stdout.write('Enter recepient account number: ');
    final int accountNo = int.parse(stdin.readLineSync()!);

    stdout.write('Enter recepient bank name: ');
    final String bankName = stdin.readLineSync()!;

    stdout.write('Enter recepient account name: ');
    final String accountName = stdin.readLineSync()!;

    stdout.write('Enter amount: ');
    final double amount = double.parse(stdin.readLineSync()!);

    stdout.write('Enter pin: ');
    int pinInput = int.parse(stdin.readLineSync()!);

    while (pin != pinInput) {
      print('Incorrect pin! Try again');

      stdout.write('Enter pin: ');
      int pinInput = int.parse(stdin.readLineSync()!);
      pin = pinInput;

      if (pin == pinInput) {
        print(
            '$amount has been transferred to $accountName with $accountNo, $bankName successfully! Thanks for banking with us');
        break;
      }
    }
  }

  void changeDetails() {
    try {
      stdout.write('What do you wish to change: \n1. Pin \n2. Phone Number');
      final int input = int.parse(stdin.readLineSync()!);

      if (input == 1) {
        stdout.write('Enter old pin: ');
        final int oldPin = int.parse(stdin.readLineSync()!);

        stdout.write('Enter new pin: ');
        final int newPin = int.parse(stdin.readLineSync()!);

        stdout.write('Confirm new pin: ');
        final int confirmPin = int.parse(stdin.readLineSync()!);

        if (newPin == confirmPin) {
          pin = newPin;
          print('Your pin as been changed successfully');
        } else {
          print('Pin are not the same try again');
        }
      } else if (input == 2) {
        stdout.write('Enter your new Phone Number: ');
        final int newPhoneNumber = int.parse(stdin.readLineSync()!);
        phoneNumber = newPhoneNumber;

        print('Your phone number as been changed successfully');
      } else {
        print('Invalid Option! Try again');
      }
    } on FormatException {
      stdout.write('What do you wish to change: \n1. Pin \n2. Phone Number');
      final int input = int.parse(stdin.readLineSync()!);

      if (input == 1) {
        stdout.write('Enter old pin: ');
        final int oldPin = int.parse(stdin.readLineSync()!);

        stdout.write('Enter new pin: ');
        final int newPin = int.parse(stdin.readLineSync()!);

        stdout.write('Confirm new pin: ');
        final int confirmPin = int.parse(stdin.readLineSync()!);

        if (newPin == confirmPin) {
          pin = newPin;
          print('Your pin as been changed successfully');
        } else {
          print('Pin are not the same try again');
        }
      } else if (input == 2) {
        stdout.write('Enter your new Phone Number: ');
        final int newPhoneNumber = int.parse(stdin.readLineSync()!);
        phoneNumber = newPhoneNumber;

        print('Your phone number as been changed successfully');
      } else {
        print('Invalid Option! Try again');
      }
    } catch (e) {
      print('Something went wrong....');
    }
  }

  void buyData() {
    stdout.write(
        'Welcome to Aptech Network Services. Choose an option to get started. \n1. Buy Airtime \n2. Buy Data \n');
    final int option = int.parse(stdin.readLineSync()!);
    if (option == 1) {
      stdout.write('Enter an amount: \n');
      final int amount = int.parse(stdin.readLineSync()!);
      stdout.write('Enter your phone number: \n');
      final int number = int.parse(stdin.readLineSync()!);
      print(
          '$amount naira airtime has been gifted to $number \n Thank you for choosing Mhizta Orlah Mobile Banking App');
    } else if (option == 2) {
      stdout.write(
          'Choose a plan \n 1. #100 - 100mb \n 2. #500 - 2.5gb \n 3. #1000 - 1tb \n 4. #1500 - 1tb\n');
      final int plan = int.parse(stdin.readLineSync()!);
      if (plan == 1) {
        stdout.write('Enter your phone number: \n');
        final int number = int.parse(stdin.readLineSync()!);
        print(
            '100mb data has been gifted to $number \n Thank you for choosing Mhizta Orlah Mobile Banking App');
      } else if (plan == 2) {
        stdout.write('Enter your phone number: \n');
        final int number = int.parse(stdin.readLineSync()!);
        print(
            '2.5gb data has been gifted to $number \n Thank you for choosing Mhizta Orlah Mobile Banking App');
      } else if (plan == 3) {
        stdout.write('Enter your phone number: \n');
        final int number = int.parse(stdin.readLineSync()!);
        print(
            '1tb data has been gifted to $number \n Thank you for choosing Mhizta Orlah Mobile Banking App');
      } else if (plan == 4) {
        stdout.write('Enter your phone number: \n');
        final int number = int.parse(stdin.readLineSync()!);
        print(
            '5tb data has been gifted to $number \n Thank you for choosing Mhizta Orlah Mobile Banking App');
      }
    }
  }
}

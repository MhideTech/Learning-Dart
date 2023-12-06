// ignore: depend_on_referenced_packages
import 'package:test/test.dart';
import 'package:testing/testing.dart' as testing;

void main(List<String> arguments) {
  print('Hello world: ${testing.calculate()}!');

  Person? person1;
  tearDown(() {
    person1?.logout();
  });
  setUp(() {
    person1 = Person('Ade', 'precious12');
    print('Hello Welcome to my app');
  }); // Login system
  // logout system
  test('Check if the user\'s name is Ade', () {
    if (person1?.name == 'Ade') {
      print('You have successfully logged in');
    }
  }); // Check if the user exist in our database

  // using add function for test
  test('addition', () {
    int ans = add(10, 20);

    expect(ans, equals(30));
  });

  // using add and subtract function for grouping

  group('calculate', () {
    test('addition', () {
      int ans = add(10, 20);

      expect(ans, equals(30));
    });

    test('subtraction', () {
      int ans = subtract(20, 10);

      expect(ans, equals(10));
    });

  });
}

// Person class for setup and teardown
class Person {
  final String name;
  final String password;

  Person(this.name, this.password);

  void logout() {
    print('You have been logged out');
  }
}

// add function for test
int add(int a, int b) {
  return a + b;
}

// add function for test
int subtract(int a, int b) {
  return a - b;
}

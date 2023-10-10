//this is a code sheet of Dart Programming Language

// This is a single line comment

/*
  This is a multiline comment in dar
*/

// dart support the following data types:
// Numbers (Integer and Double)
// Strings (A dart string is a esquence of UTF-16 code units)
// Booleans (True or False) dart uses bool keyword
// Lists (A list is an ordered group of objects)
// Maps (Map data type represents a set of values as key-value pairs)
// Dynamic (is a type of variable that the value is not explicitly specified)

// // this a basic dart programming code
// main() {
//   print("Hello World!!");
// }

// Variables in Dart
// Identifiers cannot be keywords.
// Identifiers can contain alphabets and numbers.
// Identifiers cannot contain spaces and special characters, except the underscore (_) and the dollar ($) sign.
// Variable names cannot begin with a number.

import 'other_class.dart';

import 'dart:io';
import 'dart:async';

var name = "Smith";
int numb = 12;

main() {
  print(name);
  print(numb);

  //This code does not compile
  // String one = 1;
  // print(one);
  //

  dynamic tom = "Tom";
  print(tom);
  // using the dynamic keyword the data type can change as it shown the code
  tom = 1;
  print(tom);

  //final and const are keywords used to declare constants in Dart
  // sintax : final <variable_name>
  // or : final <data_type> <variable_name>
  // or : const <variable_name>
  // or : const <data_type> <variable_name>
  // eg.
  final int boards = 12;
  print(boards);

  // onother eg.
  const pi = 3.14;
  const area = pi * 12 * 12;
  print("The output is ${area}");

  // Dart Operators and Operands
  // Operators
  // Arithmetic Operators
  //   + Add
  //   - Subtract
  //   -expr unary minus eg.
  //   * Multiply
  //   / Divide
  //   ~/ Divide and return an integer result
  //   % Get the reminder of an integer division
  //  ++ Increment  eg. int a = 12 ; ++a;
  //  -- Decrement eg. int a = 20; --a;

  // Equality and Relational Operators
  // < Greater Than
  // > Lesser Than
  // >= Greater Than or Equal to
  // <= Lesser than or Equal to
  // == Equality
  // != Not equal

  // Type test Operators
  // is (True if the object has the specified type)
  // is! (False if the object has the specified type)

  // Bitwise Operators
  // AND (a & b)
  // OR (a | b)
  // XOR (a ^ b)
  // NOT  (~ a)
  // LEFT SHIFT (a << b)
  // RIGHT SHIFT (a >> b)

  // Assignment Operators
  //
  // = Simple assignment eg. int a = (12 / 2);
  // ??= Assign the value only if the variable is null. eg.
  // int a = null;
  // a??= 12;
  // += Add and assign. eg int x = 12; x += 1;  // x is 13
  // -= Subctract and assign .eg. x = 12; x -= 1; // x is 11
  // *= Multiply and assign .eg . x = 4; x *= 2; // x is 8
  // /= Divide and assign eg. x = 10; x /= 2; // x is 5

  // Logical Operators
  // && AND Operator (return true if only if all the expressions return true)
  // || OR the operator returns true if at least one of the expressions specified
  // return true
  // ! NOT the operator retuns the inverse of the expression's result
  //

  //Loops  |-> Definete -> for
  //       |
  //       |-> Indefinete |-> while
  //                      |-> do..while
  //
  // control statement
  // contiunue and break
  //
  // Decision making (if, if.. else, else.. if ledder and switch.. case)

  // declare an integer
  int num_one = 10;

  //  declare a double value
  double num_two = 23.70;

  print(num_one);
  print(num_two);

  // Parsing data
  dynamic thirty = num.parse("30");
  dynamic ten_fifty_five = num.parse("10.55");

  print(thirty);
  print(ten_fifty_five);

  //Strings

  String hello_world_again = "Hello World";
  String multi_line_hello_world = ''' 
  
      Multiline hello world
      ${hello_world_again}

   ''';

  print(hello_world_again);
  print(multi_line_hello_world);

  // String interpolation and concatenation
  String hello = "Hello";
  String world = " World";

  String res = hello + world;

  print("the concatenated string: ${res}");

  print(res.codeUnits);

  // Boolean
  bool is_res_empty = res.isEmpty;

// if statement in Dart
  if (is_res_empty) {
    print("is not empty");
  } else {
    print("Empty string");
  }

  // List Growable
  var my_growable_list = List.filled(3, 0, growable: true);
  my_growable_list.add(1);
  my_growable_list.add(2);
  my_growable_list.addAll([12, 33, 44, 55]);
  print("Growable list in Dart : ${my_growable_list}");

  // List Fixed size
  // var list_name = new List(initial_size)
  var my_fixed_list = List.filled(3, 0, growable: true);
  my_fixed_list[1] = 2;
  my_fixed_list[2] = 3;
  print("fixed list in Dart : ${my_fixed_list}");

  //will throw an error
  //my_fixed_list[3] = 4;
  //

  // Map in Dart
  var my_map = {"name": "Vanilson", "age": 23};
  print(my_map);

  Map<String, String> user_map = {
    "username": "vmarcos",
    "password": "#\$jg9gjwAdnmore"
  };

  print(user_map);

  // add item to a map in this case the user_map

  var second_user = user_map.putIfAbsent("birth_date", () => "1989");
  print(second_user);

  print(user_map);

  // update the value by the key
  user_map.update("password", (value) {
    print("Old value is: ${value}");
    return "#\$jg9gjwAdnmoreTO_YOU";
  });
  print(user_map["password"]);

  // Map remove and removeWhere methods
  //
  //remove the by the key
  user_map.remove("birth_date");
  print(user_map);

  // remove by the condition either key/value
  user_map.removeWhere((k, v) => k == "password");
  print(user_map);

  // Iterate over a map
  var numbers = {1: "ONE", 2: "TWO", 3: "Three", 4: "Four"};

  // forEach method
  numbers.forEach((key, value) {
    print("Key $key, Value $value");
  });

  //entry property and forEach() method
  numbers.entries.forEach((element) {
    print("key :${element.key}, value: ${element.value}");
  });

  // iterate over values

  numbers.values.forEach((element) {
    print("value: $element");
  });

  // Iterate over keys
  numbers.keys.forEach((element) {
    print("key: $element");
  });

  // enumeration in Dart
  //

  print("days of week: ");

  days_of_week.values.forEach((day) {
    print(day);
  });

  // print a single day
  print("print a single day");
  print(days_of_week.FRIDAY);

  int aditionOperation = addNumbers(12, 3);

  print("12 plus 3 is: $aditionOperation");

  print(factorial(10));

  print_msg("A,B,C,D");

  ConsolePrinter cp = new ConsolePrinter();
  cp.print_data();

  var p1 = new Person(
      "Vanilson", "António da Costa", "Marcos", new DateTime(1989, 11, 16));

  print("Printing Person");
  p1.print_data();

  Person s1 = Student("Vanilson", "António da Costa", "Marcos",
      new DateTime(1989, 11, 16), "12 Classe", "Escola do MPLA");

  print("Printing Student");
  s1.print_data();

  // using the imported class
  OtherClass oclass = new OtherClass("Hello from other class");

  // Dart 2.0 introduces null safety check in compile timne
  // a variable should be initializate with a default value
  // its still posssible to lazy init by using keyword <late>
  int a = 0;
  late int b;
  b = a;
  print(b);

  // print("Please, insert your birth year...");
  // String _by = stdin.readLineSync() ?? "0";

  // int birthYear = int.parse(_by);

  // int age = calculateAge(birthYear);

  // print("The result is ${age}");

  // Weather w = Weather();
  // print("Hello");
  // w.display();
  // dynamic temp = w._temperature;
  // print(temp);

  // the exclamation mark is used to cast from a nullable value
  // to a non-nullable value
  String? clientName = null;

  String newClientName = clientName!;
  print(newClientName);


  
}

// classes in Dart syntax
//class class_name {
//    <fields>
//    <getters/setters>
//    <constructors>
//    <functions>
// }
//

class Person {
  String name;
  String middle_name;
  String surname;
  DateTime birth_date;

  Person(this.name, this.middle_name, this.surname, this.birth_date) {}

  print_data() {
    String formated_data = """
    Person full name is : ${this.name} ${this.middle_name} ${this.middle_name}
          birth date is : ${this.birth_date.toString()}
    """;
    print(formated_data);
  }
}

class Student extends Person {
  @override
  DateTime birth_date;

  @override
  String middle_name;

  @override
  String name;

  @override
  String surname;

  String grade;

  String school_name;

  Student(this.name, this.middle_name, this.surname, this.birth_date,
      this.grade, this.school_name)
      : super(name, middle_name, surname, birth_date) {}

  @override
  print_data() {
    String formatted_data = """
      Student full name is : ${this.name} ${this.middle_name} ${this.middle_name}
          birth date is : ${this.birth_date.toString()}´
               grade is : ${this.grade}
         school_name is : ${this.school_name}
     """;
    print(formatted_data);
  }
}

class Printer {
  void print_data() {
    print("__________Printing Data__________");
  }
}

class ConsolePrinter implements Printer {
  void print_data() {
    print("__________Printing to Console__________");
  }
}

// Function/Method in dart
// <data_type> <identifier_name> ([<params_name ...>])
int addNumbers(int a, int b) {
  return a + b;
}

// recursive function/method in dart
factorial(number) {
  if (number <= 0) {
    return 1;
  } else {
    return (number * factorial(number - 1));
  }
}

//Lambda function in dart
//[return_type] function_name(parameters)=>expression;
print_msg(o) => print(o);

enum days_of_week {
  MONDAY,
  TUESDAY,
  WEDNESDAY,
  THURSDAY,
  FRIDAY,
  SATURDAY,
  SUNDAY
}

//Optional parameter are the be user are used in []
int calculateAge(int birthYear, [String? name]) {
  return DateTime.now().year - birthYear;
}

class Weather {
  late int _temperature;

  void display() {
    _temperature = _readThermometer();
    print(_temperature);
  }
}

int _readThermometer() {
  return 100;
}

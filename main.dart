// question # 1

void main() {
  List<String> names = ['Faiqa', 'Alina', 'Umaima', 'Hania', 'Alishba'];

  for (String name in names) {
    print(name);
  }
}

// question 2

void main() {
  List<String> days = [];

  // Add names of the seven days
  days.add('Monday');
  days.add('Tuesday');
  days.add('Wednesday');
  days.add('Thursday');
  days.add('Friday');
  days.add('Saturday');
  days.add('Sunday');

  // Print all days
  for (String day in days) {
    print(day);
  }
}


//  question 3

void main() {
  List<String> days = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];

  // Remove days from the end of the list
  while (days.isNotEmpty) {
    String removedDay = days.removeLast();
    print('Removed day: $removedDay');
  }
}

// question 4

void main() {
  List<int> numbers = [5, 2, 9, 1, 7, 4, 6];

  // Find the smallest number
  int smallest = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] < smallest) {
      smallest = numbers[i];
    }
  }
  print('Smallest number: $smallest');

  // Find the greatest number
  int greatest = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > greatest) {
      greatest = numbers[i];
    }
  }
  print('Greatest number: $greatest');
}


// question 5

void main() {
  Map<String, String> contactMap = {
    'Sania': '1234',
    'Areeba': '56789',
    'Sara': '987654',
    'Alishba': '4321',
    'Mehak': '9876',
  };

  // Find keys with length 4
  List<String> keysWithLength4 = contactMap.keys.where((key) => key.length == 4).toList();

  // Print keys with length 4
  print('Keys with length 4:');
  for (String key in keysWithLength4) {
    print(key);
  }
}
  

// question 6

void main() {
  Map<String, Map<String, dynamic>> world = {
    'USA': {
      'capitalCity': 'Washington D.C.',
      'currency': 'US Dollar',
      'language': 'English',
    },
    'France': {
      'capitalCity': 'Paris',
      'currency': 'Euro',
      'language': 'French',
    },
    'Japan': {
      'capitalCity': 'Tokyo',
      'currency': 'Japanese Yen',
      'language': 'Japanese',
    },
  };

  String countryKey = 'France';
  Map<String, dynamic> countryInfo = world[countryKey];
  if (countryInfo != null) {
    String capital = countryInfo['capitalCity'];
    String currency = countryInfo['currency'];

    print('Country: $countryKey');
    print('Capital: $capital');
    print('Currency: $currency');
  } else {
    print('Country not found!');
  }
}
  

// question 7

void main() {
  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };

  String key = 'fri';
  double newValue = 5000.0;

  if (expenses.containsKey(key)) {
    expenses[key] = newValue;
  } else {
    expenses[key] = newValue;
  }

  print('Updated expenses:');
  print(expenses);
}


// question 8

void main() {
  List<Map<String, bool>> usersName = [
    {'name': 'umaima', 'eligible': true},
    {'name': 'Faiqa', 'eligible': false},
    {'name': 'Sania', 'eligible': true},
    {'name': 'Sarah', 'eligible': true},
    {'name': 'Sana', 'eligible': false},
  ];

  
  usersName.removeWhere((user) => user['eligible'] == false);
 
  print(usersName);
}
  

  // question 9 

  void main() {
  List<int> numbers = [10, 5, 8, 15, 2, 20];

  int maxValue = findMaxValue(numbers);
  print('The maximum value is: $maxValue');
}

int findMaxValue(List<int> numbers) {
  int maxValue = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > maxValue) {
      maxValue = numbers[i];
    }
  }

  return maxValue;
}


  // question 10

void main() {
  List<String> originalList = ['apple', 'banana', 'orange', 'banana', 'kiwi', 'orange', 'apple'];

  List<String> newList = removeDuplicates(originalList);
  print('Original List: $originalList');
  print('New List without duplicates: $newList');
}

List<String> removeDuplicates(List<String> list) {
  List<String> newList = [];

  for (String element in list) {
    if (!newList.contains(element)) {
      newList.add(element);
    }
  }

  return newList;
}


// question 11

void main() {
  List<int> originalList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int n = 5;

  List<int> newList = getFirstNElements(originalList, n);
  print('Original List: $originalList');
  print('New List with the first $n elements: $newList');
}

List<int> getFirstNElements(List<int> list, int n) {
  if (n >= list.length) {
    return list;
  }

  return list.sublist(0, n);
}
 

//  question 12

void main() {
  List<String> originalList = ['apple', 'banana', 'orange', 'kiwi'];
  
  List<String> reversedList = getReversedList(originalList);
  
  print('Original List: $originalList');
  print('Reversed List: $reversedList');
}

List<String> getReversedList(List<String> list) {
  List<String> reversedList = List.from(list.reversed);
  return reversedList;
}

// question 13

void main() {
  List<int> originalList = [1, 2, 3, 2, 4, 5, 1, 3, 6];
  
  List<int> uniqueList = getUniqueElements(originalList);
  
  print('Original List: $originalList');
  print('Unique List: $uniqueList');
}

List<int> getUniqueElements(List<int> list) {
  List<int> uniqueList = [];
  
  for (int element in list) {
    if (!uniqueList.contains(element)) {
      uniqueList.add(element);
    }
  }
  
  return uniqueList;
}


// question 14

void main() {
  List<int> originalList = [5, 2, 8, 1, 3];
  
  List<int> sortedList = getSortedElements(originalList);
  
  print('Original List: $originalList');
  print('Sorted List: $sortedList');
}

List<int> getSortedElements(List<int> list) {
  List<int> sortedList = List.from(list);
  
  sortedList.sort();
  
  return sortedList;
}


// question 15

void main() {
  List<int> originalList = [1, -2, 3, -4, 5, -6];
  
  List<int> positiveList = getPositiveNumbers(originalList);
  
  print('Original List: $originalList');
  print('Positive List: $positiveList');
}

List<int> getPositiveNumbers(List<int> list) {
  List<int> positiveList = list.where((number) => number > 0).toList();
  return positiveList;
}

// question 16

void main() {
  List<int> originalList = [1, 2, 3, 4, 5, 6];
  
  List<int> evenList = getEvenNumbers(originalList);
  
  print('Original List: $originalList');
  print('Even List: $evenList');
}

List<int> getEvenNumbers(List<int> list) {
  List<int> evenList = list.where((number) => number % 2 == 0).toList();
  return evenList;
}

// question 17

void main() {
  List<int> originalList = [1, 2, 3, 4, 5];
  
  List<int> squaredList = getSquaredValues(originalList);
  
  print('Original List: $originalList');
  print('Squared List: $squaredList');
}

List<int> getSquaredValues(List<int> list) {
  List<int> squaredList = list.map((number) => number * number).toList();
  return squaredList;
}

// question 18

void main() {
  Map<String, dynamic> person = {
    'name': 'sara',
    'age': 25,
    'Student': true,
  };
  
  bool isEligible = checkEligibility(person);
  
  if (isEligible) {
    print('Eligible');
  } else {
    print('Not eligible');
  }
}

bool checkEligibility(Map<String, dynamic> person) {
  String name = person['name'];
  int age = person['age'];
  bool Student = person['Student'];
  
  return Student && age > 18;
}


// question 19

void main() {
  Map<String, dynamic> product = {
    'name': 'Example Product',
    'price': 9.99,
    'quantity': 0,
  };
  
  checkStockStatus(product);
}

void checkStockStatus(Map<String, dynamic> product) {
  String name = product['name'];
  int quantity = product['quantity'];
  
  if (quantity > 0) {
    print('$name is in stock');
  } else {
    print('$name is out of stock');
  }
}

// question 20

void main() {
  Map<String, dynamic> car = {
    'brand': 'Toyota',
    'color': 'Red',
    'isSedan': true,
  };
  
  checkCarMatch(car);
}

void checkCarMatch(Map<String, dynamic> car) {
  String brand = car['brand'];
  String color = car['color'];
  bool isSedan = car['isSedan'];
  
  if (isSedan && color == 'Red') {
    print('Match');
  } else {
    print('No match');
  }
}
 

// question 21

void main() {
  Map<String, dynamic> user = {
    'name': 'Sara',
    'isAdmin': true,
    'isActive': true,
  };
  
  checkActiveAdmin(user);
}

void checkActiveAdmin(Map<String, dynamic> user) {
  String name = user['name'];
  bool isAdmin = user['isAdmin'];
  bool isActive = user['isActive'];
  
  if (isAdmin && isActive) {
    print('$name is an active admin');
  } else {
    print('$name is not an active admin');
  }
}


// question 22

void main() {
  Map<String, int> shoppingCart = {
    'Banana': 2,
    'Orange': 3,
    'Apple': 1,
    'Mango': 4,
  };
  
  checkProductExistence(shoppingCart, 'Apple');
}

void checkProductExistence(Map<String, int> cart, String productName) {
  if (cart.containsKey(productName)) {
    print('Product found');
  } else {
    print('Product not found');
  }
}

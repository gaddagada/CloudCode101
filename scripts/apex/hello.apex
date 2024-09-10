// Variables and Data Types 
/*
 * Common Data Types in Apex 
 *  String
 *  Integer 
 *  Decimal 
 *  Boolean 
 *  Date 
 *  Datetime
 *  List
 *  Map 
 */
// String used to store sequences of characters.
String messageForSalesforce = 'Salesforce ';
System.debug(messageForSalesforce); 
// Integer used to store whole numbers 
Integer count = 5; 
System.debug(count);
// Decimal used to store floating-point numbers
Decimal price = 19.99; 
System.debug(price); 
// Boolean used to store true or false values 
Boolean isActive = true; 
System.debug(isActive); 
// Date used to store dates 
Date today = Date.today();
System.debug(today); 
// Datetime used to store dates and times 
Datetime now = Datetime.now();
System.debug(now);
// List used to store ordered collections of elements 
List<String> names = new List<String>();
System.debug(names);
// Map used to store key-value pairs 
Map<String, Integer> scoreMap = new Map<String, Integer>();
System.debug(scoreMap);


/*
 * Assigning Values 
 */
String greeting = 'Hello, World!';
Integer count = 10;

/*
 * Updating values  
 */
count = 20;
greeting = 'Welcome to Salesforce!';

/*
 * Using variables in expressions 
*/
Integer a = 5;
Integer b = 10;
Integer sum = a + b; // sum will be 15

/*
 * Collections in Apex 
 *   Lists 
 *      A list is an ordered collection of elements that are distinguished by their indices.
 *      List elements can be of any data type—primitive types, collections, sObjects, user-defined types, 
 *      and built-in Apex types.
 *   Sets 
 *      A set is an unordered collection of elements that do not contain any duplicates. Set elements can be 
 *      of any data type—primitive types, collections, sObjects, user-defined types, and built-in Apex types.
 *   Maps
 *      A map is a collection of key-value pairs where each unique key maps to a single value. 
 *      Keys and values can be any data type—primitive types, collections, sObjects, user-defined 
 *      types, and built-in Apex types.
 * 
 */
// List Examples 
// Create an empty list of String
List<String> my_list = new List<String>();
// Create a nested list
List<List<Set<Integer>>> my_list_2 = new List<List<Set<Integer>>>();

List<Integer> myList = new List<Integer>(); // Define a new list
myList.add(47);                    // Adds a second element of value 47 to the end 
                                       // of the list
Integer i = myList.get(0);                   // Retrieves the element at index 0
myList.set(0, 1);                           // Adds the integer 1 to the list at index 0
myList.clear();                    // Removes all elements from the list

// Using Array Notation for 1-D Lists 
String[] colors = new List<String>();

//Equivalent to statement above
List<String> colors = new String[1];
tring[] colors = new String[1];

//Reference element of 1-D list  following name of list with index position in square brackets 
colors[0] = 'Green';

//Set Examples 
Set<String> myStringSet = new Set<String>();

// Defines a new set with two elements
Set<String> set1 = new Set<String>{'New York', 'Paris'};

// Define a new set
Set<Integer> mySet = new Set<Integer>();
// Add two elements to the set
mySet.add(1);
mySet.add(3);
// Assert that the set contains the integer value we added
System.assert(mySet.contains(1)); 
// Remove the integer value from the set
mySet.remove(1);

// Define a new set that contains the
// elements of the set created in the previous example
Set<Integer> mySet2 = new Set<Integer>(mySet);
// Assert that the set size equals 1
// Note: The set from the previous example contains only one value
System.assert(mySet2.size() == 1);

//Map Examples 
Map<String, String> country_currencies = new Map<String, String>();
Map<ID, Set<String>> m = new Map<ID, Set<String>>();

Map<String, String> MyStrings = new Map<String, String>{'a' => 'b', 'c' => 'd'.toUpperCase()};

Map<Integer, String> m = new Map<Integer, String>(); // Define a new map
m.put(1, 'First entry');                  // Insert a new key-value pair in the map
m.put(2, 'Second entry');                  // Insert a new key-value pair in the map
System.assert(m.containsKey(1));  // Assert that the map contains a key
String value = m.get(2);               // Retrieve a value, given a particular key
System.assertEquals('Second entry', value);
Set<Integer> s = m.keySet();       // Return a set that contains all of the keys in the map
System.debug(m.values());       // Return a list that contains all of the values in the map

//Using Maps in Apex 
// Create a map that maps strings to numbers
Map<String, Integer> m = new Map<String, Integer>();

/*
 * Enums 
 *  An enum is an abstract data type with values that each take on exactly one of a finite set of 
 *  identifiers that you specify. Enums are typically used to define a set of possible values that 
 *  don’t otherwise have a numerical order. 
 * 
 */

public enum Season {WINTER, SPRING, SUMMER, FALL}

Season southernHemisphereSeason; 

public Season getSouthernHemisphereSeason(Season northernHemisphereSeason) {

    if (northernHemisphereSeason == Season.SUMMER) {
        southernHemisphereSeason = Season.WINTER;
    }else if (northernHemisphereSeason == Season.WINTER) {
        southernHemisphereSeason = Season.SUMMER;
    }else if (northernHemisphereSeason == Season.SPRING) {
        southernHemisphereSeason = Season.FALL;
    }else if (northernHemisphereSeason == Season.FALL) {
        southernHemisphereSeason = Season.SPRING;
    }else {
        throw new IllegalArgumentException('Invalid season: ' + northernHemisphereSeason);
    }
    return southernHemisphereSeason; 
}

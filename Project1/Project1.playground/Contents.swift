// Welcome to Swift Bootcamp, maggots. We will move Swiftly through this playground! 😏

// This file is a Swift Playground. A Playground is simply a space where you can write some code, and see it's output in the right hand pane.

// One thing to remember is that Swift Playgrounds compile from the *top down* so...if you declare a var on line one, you can use it on line two, but not vice-versa.

// Sometimes, Swift Playgrounds will "hang up," and the output in the pane and right will gray out. Select Editor->Execute Playground to force a Playground to compile and render output.


// Looky what we have here, an import statement. Foundation includes all the types we'll need for this playground.
import Foundation


/* Lesson 1: Basic Strings */

var string = "This is a String with an inferred type. See the output in the pane at right?"
// Uncomment line 14, and see what happens. Then, give me 20 pushups
// string = 27

var properString : String = "This is a String with the type clearly defined. Although computationally identical to the above string, this style is generally preferred at Nike (and certainly preferred in Retail)."

// Vars are *mutable* whereas lets are not. Prefer Lets over vars. Xcode will nag you if you create a var, and then do not mutate it.
let immutableString : String = "You can remember that lets are immutable with the phrase 'Let there be light!'"

// Uncomment the line below, and see what happens.
// immutableString = "Yes sir, drill seargeant!"


/* Lesson 2: A few Common Types */

let myFirstInteger : Int = 12
let myFirstFloat : Float = 12.23
let myFirstDouble : Double = 12.34
let myFirstString : String = "This is my rifle, this is my gun"
let myFirstchar : Character = "C"
let myFirstBool : Bool = true
let 😧 : String = "42" // Apple supports Unicode variables. See http://stackoverflow.com/questions/26170876/how-to-list-almost-all-emojis-in-swift-for-ios-8-without-using-any-form-of-loo
let myFirstArray : [String] = ["Fee", "Fie", "Foe", "Fum"]

enum MyFirstEnum {
    case EnumValue1
    case EnumValue2
    case EnumValue3
}

let instanceOfAnEnum : MyFirstEnum = MyFirstEnum.EnumValue1



/* Lesson 3: Arrays */

// Note that Arrays are zero-indexed
var mutableArray : [String] = ["Element 0", "Element 1", "Element 2"]
mutableArray[0] = "Go Ducks!"
print(mutableArray[0])

mutableArray.append("Element 3")
print(mutableArray.count)

mutableArray += ["Element 4", "Element 5"]

mutableArray.insert("Element ?", atIndex: 2)
mutableArray = mutableArray.reverse()

mutableArray.removeAll()
print("The array is empty: \(mutableArray.isEmpty)")

// Uncomment the below line and see what happens
//mutableArray[0] = 123


// Take a knee, soldier. This is your first nillable object. See the question mark? That means this var can be nil:
var myFirstNillableString : String? = nil

// When referencing this string, we need to use the ? to indicate, "This could be a nil varaible"
print(myFirstNillableString?.characters.count)
myFirstNillableString = "They signed you up for the length of the war / I've never had it so good before"
print(myFirstNillableString?.characters.count) // See how the output pane says "Optional"?



// If you are absolutely certain that the variable has a value, you can use "force unwrapping," where you use an exclamation mark when referencing the variable:
print(myFirstNillableString!.characters.count) // I'm absolutely certain this variable has a value

myFirstNillableString = nil // Nilling out this var

// Uncomment the below line and see what happens when you forcefully unwrap something that is nil.
//print(myFirstNillableString!.characters.count)
// If you do the above in your code, your App will crash, and we will lose the war.

var mySecondNillableString : String! = nil
// print(mySecondNillableString.characters.count) // Crashapalooza
var myThirdNillableString : String! = "I have a life, I promise"
print(myThirdNillableString.characters.count)


// Use ? if the variable, object, class, etc can be nil, or will be nil in the future. A question mark means "this variable will *either be nil or some other thing in the future*". You are not guaranteed type safety with this approach
// Use ! if the variable, object, class, etc really shouldn't be nil, but can be nil upon instantiation. An exclamation point means "this variable will *either be nil or the specified type* (in this case, a string)"
// ******* Don't even specify an optionality while learning Swift *******



// Lesson 4: Conditional Statements and Control Flow


let myRank : Int = 42
let yourRank : Int = 2

if myRank > yourRank {
    print("Welcome to conditional statements, grunt")
}

if myRank == yourRank {
    // This will never happen
}

if myRank >= yourRank {
    print("Let's have tacos!")
}

let someString : String = "This is a string"
let someOtherString : String = "This is also a string"

if someString == someOtherString {
    // String comparisons are just like Bool or Int comparisons, use double-equals (==)
}

if someString == someOtherString {
    
} else {
    print("Guess those strings are not equal. Rats.")
}

if someString != someOtherString {
    print("That's correct, these strings are not equal")
}

if someString == someOtherString {
    
} else if someString != someOtherString {
    print("This is pretty silly logic, but it demonstrates else-if statements")
}

let army : String = "Army"
let navy : String = "Navy"
let airForce : String = "Air Force"
let marines : String = "Marines"
let coastGuard : String = "Really? The Coast Guard"

// Change the line below to Navy and see the output...
let branchOfTheMilitary : String = army

switch branchOfTheMilitary {
    case army:
        print("You've joined the Army")
    case navy:
        fallthrough
    case airForce:
        print("You've joined either the Navy or the Air Force. Those are pretty similar, right?")
    case coastGuard:
        print("Joking aside, the Coast Guard saves countless lives every year. There's nothing passive about the Pacific Ocean.")
    default:
        print("You haven't joined the military. Shame on you.")
}


// It's time for your first function. Remember, Swift Playgrounds compile top-down. Uncomment the below line to see what happens:
// doPushups(42)

private func doPushups(howManyPushups : Int) {
    print("I will do \(howManyPushups) pushups")
}

doPushups(400)


// 1. Move your mouse to the Output Pane at right, and roll over the "print(j)" line.
// 2. Click the little circle icon (turns into a plus when you roll over it)
// 3. Roll over the for loop below, and right-click on the gray area
// 4. Select "Value History"
// 5. Once done, click the "X" for this line in the Output Window
for (var j : Int = 0; j < 10; j++) {
    print(j)
}


var a : Int = 5
var b : Int = 10
while a < b {
    a += 1
}


// A "Break" statement will kick you out of a control flow loop
var x : Int = 1
while x < 10 {
    x++
    if x > 5 {
        break
    }
}

// A "Return" statement *anywhere* in your program flow will simply return the pointer to the calling class or function

func whichNumberIsGreater(firstNumber : Int, secondNumber : Int) -> String {
    if firstNumber > secondNumber {
        return "\(firstNumber) is greater than \(secondNumber)"
    }

    if secondNumber > firstNumber {
        return "\(secondNumber) is greater than \(firstNumber)"
    }
    
    return "The numbers are equal"
}

whichNumberIsGreater(4, secondNumber: 5)
whichNumberIsGreater(4, secondNumber: 4)


/* Lesson 5: Scope, AND Your First Function! */


// Public access enables entities to be used within any source file from their defining module, and also in a source file from another module that imports the defining module. You typically use public access when specifying the public interface to a framework.

// Private access restricts the use of an entity to its own defining source file. Use private access to hide the implementation details of a specific piece of functionality.

// Internal access enables entities to be used within any source file from their defining module, but not in any source file outside of that module. You typically use internal access when defining an app’s or a framework’s internal structure.


public func getRankDescription(rank : Int) -> String {
    
    switch rank {
        case 10:
            return "Grunt"
        case 20:
            return "Soldier"
        case 30:
            return "Captain"
        case 40:
            return "Major Richard Winters" // https://en.wikipedia.org/wiki/Richard_Winters
        default:
            return "You are not a soldier. Pity."
    }
    
}

print(getRankDescription(40))

/* Lesson 6: Your First Struct! */

public struct User {
    var firstName : String! // firstName and lastName will be nil upon instantiating an instance of this struct. This allows you to create an instance of this struct without passing in all arguments.
    var lastName : String!

    // This is your initializer. This one takes no arguments
    init() {
        
    }
    
    // This is another initializer.
    init(fName : String) {
        firstName = fName
    }

    var formattedName : String { // This is a Computed Property. By only having the "get" this is a read-only property
        get {
            return firstName + " " + lastName
        }
    }
    
}

var myFirstUser : User = User()
myFirstUser.firstName = "Richard"
myFirstUser.lastName = "Winters"
print(myFirstUser.formattedName)

// Uncomment the below line and see what happens
// myFirstUser.formattedName = "Pete Salvo"


public struct Soldier {
    var rank : String
    var division : String
}

var soldier : Soldier = Soldier(rank: "Captain", division: "3rd Marines, 2nd Battalion")


/* Lesson 7: Your First Class! */

public class MyFirstClass {
    
    private var myPrivateVar : String = "Hello, World"
    
    public init() {
        
    }
    
    public init(someValue : String) {
        myPrivateVar = someValue
    }
}

let myFirstClass : MyFirstClass = MyFirstClass()
print(myFirstClass.myPrivateVar)

let mySecondClass : MyFirstClass = MyFirstClass(someValue: "I'm changing this value...")
print(mySecondClass.myPrivateVar)

// Structs are preferable if they are relatively small and copiable
// ...but this can EASILY spiral into an hours-long debate.

// I highly recommend reading this here: http://stackoverflow.com/questions/24232799/why-choose-struct-over-class

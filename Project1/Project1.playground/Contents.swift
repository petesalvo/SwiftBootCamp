// Welcome to Swift Bootcamp, maggots. This course assumes you already know a fair bit about object oriented programming. We will not wait for weaklings, we will move Swiftly! 😏
// This file is a Swift Playground. A Playground is simply a space where you can write some code, and see it's output in the right hand pane.

// One thing to remember is that Swift Playgrounds compile from the *top down* so...if you declare a var on line one, you can use it on line two, but not vice-versa.

// Sometimes, Swift Playgrounds will "hang up." Select Editor-Execute Playground to force a Playground to compile and render output.


// Looky what we have here, an import statement. UIKit, as you can deduce from the name, is a framework that includes all things UI (buttons, labels, tables, etc)
import UIKit


var string = "This is a String with an inferred type. See the output in the pane at right?"

// Uncomment line 14, and see what happens. Then, give me 20 pushups
// string = 27

var properString : String = "This is a String with the type clearly defined. Although computationally identical to the above string, this style is generally preferred at Nike (and certainly preferred in Retail)."

// Vars are *mutable* whereas lets are not.

let immutableString : String = "You can remember that lets are immutable with the phrase 'Let there be light!'"

// Uncomment line 23, and see what happens.
// immutableString = "Yes sir, drill seargeant!"

// ALWAYS PREFER LETS OVER VARS. Xcode will even nag you if you define a var and don't change it's value, "Hey man, this should be a let"

let myFirstInteger : Int = 12
let myFirstDouble : Double = 12.34
let myFirstString : String = "This is my rifle, this is my gun"
let myFirstchar : Character = "C"
let myFirstBool : Bool = true
let 😧 : String = "42" // I have no idea why, but Apple allows for Emoji vars. See http://stackoverflow.com/questions/26170876/how-to-list-almost-all-emojis-in-swift-for-ios-8-without-using-any-form-of-loo

enum MyFirstEnum {
    case EnumValue1
    case EnumValue2
    case EnumValue3
}

let myEnum : MyFirstEnum = MyFirstEnum.EnumValue1

// Note that Arrays are zero-indexed
var mutableArray : [String] = ["Element 0", "Element 1", "Element 2"]
mutableArray[0] = "Assigning a new value"
print(mutableArray[0])



// It's up to your team to define a style guide. Both of these statements are identical to the compiler:
var emptyArrayOfInts : [Int] = [Int]()
var emptyArrayOfInts2 = [Int]()

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
// Don't even specify an optionality while learning Swift

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

let branchOfTheMilitary : String = "Army"

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

// See the String concatenation above? Another way to do it is:
let myString : String = "The cat" + " in the hat"

// Public access enables entities to be used within any source file from their defining module, and also in a source file from another module that imports the defining module. You typically use public access when specifying the public interface to a framework.

// Internal access enables entities to be used within any source file from their defining module, but not in any source file outside of that module. You typically use internal access when defining an app’s or a framework’s internal structure.

// Private access restricts the use of an entity to its own defining source file. Use private access to hide the implementation details of a specific piece of functionality.

// Here is a method with a RETURN type (String). This could be anything...a String, an Int, an Object, etc:
public func getRankDescription(rank : Int) -> String {
    
    switch rank {
        case 10:
            return "Grunt"
        case 20:
            return "Soldier"
        case 30:
            return "Captain"
        case 40:
            return "Major Richard Winters" // Seriously, this guy exemplifies why they are referred to as the "Greatest Generation" https://en.wikipedia.org/wiki/Richard_Winters
        default:
            return "You are not a soldier. Pity."
    }
    
}

print(getRankDescription(40))

public struct User {
    var firstName : String! // firstName and lastName will be nil upon instantiating an instance of this struct. This allows you to create an instance of this struct without passing in all arguments.
    var lastName : String!
    
    var formattedName : String { // This is a Computed Property. By only having the "get" this is a read-only property
        get {
            return firstName + " " + lastName
        }
    }
    
    init() {
        
    }
}

var myFirstUser : User = User()
myFirstUser.firstName = "Richard"
myFirstUser.lastName = "Winters"
print(myFirstUser.formattedName)



public struct Soldier {
    var rank : String
    var division : String
}

var soldier : Soldier = Soldier(rank: "Captain", division: "3rd Marines, 2nd Battalion")

// I don't have 14 hours to spare, so if you want to read up on Classes Versus Structs, go here: http://stackoverflow.com/questions/24232799/why-choose-struct-over-class

// TL;DR: start with learning Structs.

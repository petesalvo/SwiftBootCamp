// Importing UIKit because we need to use an UIImage in this Model
import UIKit

public class BankAccount {
    
    // The "(set)" here makes these read-only vars
    // Typical of Apple, there are three or four different ways to create read-only vars. This is probably the briefest syntax.
    
    private(set) var balance : Float = 0
    private(set) var firstName : String = ""
    private(set) var lastName : String = ""
    private(set) var address : String = ""
    private(set) var image : UIImage! = nil
    
    // This is a computed property. I'm con😺enating first and last name
    public var userName : String {
        get {
            return "\(firstName) \(lastName)"
        }
    }
    
    public init (firstName : String, lastName : String , address :  String, initialBalance : Float) {
        
        // To remove ambiguity between our class vars and the parameters being passed in, we reference
        // "self" - identical to referencing "this" in Java.
        
        self.firstName = firstName
        self.lastName = lastName
        self.address = address
        balance = initialBalance
        image = UIImage(named: firstName)
    }
    
    // Convenience init = constructor overloading and/or constructor chaining:
    // http://www.codingricky.com/construtor-chaining-in-swift/ 
    public convenience init(firstName : String, lastName : String) {
        self.init(firstName: firstName, lastName : lastName, address : "", initialBalance : 0)
    }

    public convenience init() {
        self.init(firstName: "", lastName : "", address : "", initialBalance : 0)
    }
        
    func credit(amountToCredit : Float) {
        balance += amountToCredit
    }
    
    func debit(amountToDebit : Float) {
        if amountToDebit < 0 {
            return
        }
        
        balance -= amountToDebit
    }
    
}
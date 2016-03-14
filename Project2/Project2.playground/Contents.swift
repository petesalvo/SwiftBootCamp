// Captain, something is wrong...it's....*blank*

/* This is your first Swift challenge!

1. Create a Class called BankAccount

2. BankAccount needs a mutable Float called "balance"
    - Balance should default to zero

3. BankAccount needs two initializers
    - Init 1 method should take a Float. The balance var should be set to the input parameter
    - Init 2 method should take no parameters. The balance var should be set to zero

4. BankAccount needs a function called "credit" that takes in a Float
    - Balance should be adjusted with each credit

5. BankAccount needs a function called "debit" that takes in a Float
    - Balance should be adjusted with each debit


6. Make the unit tests below Pass

7. Bonus: prevent the balance from being adjusted when calling the "debit" function with a negative number

Note: you will be able to change account.balance directly, because Playgrounds don't respect variable scope.

*/


import Foundation





// Need some help? Raise your hand! There is also a sample class file in the project folder.





// Uncomment these tests when you are ready to test your Class...

/*


// Test 1
let testAccount1 : BankAccount = BankAccount()
assert(testAccount1.balance == 0, "I thought the default balance would be zero")
print("My account balance: \(testAccount1.balance)")


// Test 2
let testAccount2 : BankAccount = BankAccount(newBalance: 100)
assert(testAccount2.balance == 100, "I thought the balance would be 100!")
print("My account balance: \(testAccount2.balance)")
testAccount2.credit(100)
assert(testAccount2.balance == 200, "I thought the balance would be 200!")


// Test 3
let testAccount3 : BankAccount = BankAccount(newBalance: 100)
testAccount3.debit(50)
assert(testAccount3.balance == 50, "I thought the balance would be 50!")
print("My account balance: \(testAccount3.balance)")


// Test 4: Bonus unit test
let testAccount4 : BankAccount = BankAccount(newBalance: 100)
testAccount4.debit(-5000)
assert(testAccount4.balance == 100, "Not so fast, I can handle negative numbers!")
print("My account balance: \(testAccount4.balance)")



*/

//
//  Project3Tests.swift
//  Project3Tests
//
//  Created by Salvo, Pete on 3/13/16.
//  Copyright © 2016 Nike, Inc. All rights reserved.
//

import XCTest
import Project3

class Project3Tests: XCTestCase {
    
    private var bankAccount : BankAccount! = nil
    private var fName : String = ""
    private var lName : String = ""
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testUserNameIsProperlyFormatted() {
        givenAFirstName("Darrek")
        givenALastName("Kay")
        whenNewAccountCreated()
        thenUserNameIs("Darrek Kay")
    }
    
    func givenAFirstName(firstName : String) {
        fName = firstName
    }
    
    func givenALastName(lastName : String) {
        lName = lastName
    }
    
    func whenNewAccountCreated() {
        bankAccount = BankAccount(firstName: fName, lastName : lName)
    }
    
    func thenUserNameIs(userName : String) {
        XCTAssertEqual(userName, bankAccount.userName, "Expected the username to be \(userName)")
    }
    
}

//
//  TDDModelObjectsTests.swift
//  TDDModelObjectsTests
//
//  Created by Skyler Robbins on 2/3/25.
//

import XCTest

// MARK: - Person Model
class Person {
    let firstName: String
    let lastName: String
    let age: Int

    init(firstName: String, lastName: String, age: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }

    var fullName: String {
        return firstName + " " + lastName
    }
}

// MARK: - Unit Tests
class TestPerson: XCTestCase {
    func testFullName() {
        let person = Person(firstName: "Kevin", lastName: "Bjornberg", age: 17)
        XCTAssertEqual(person.fullName, "Kevin Bjornberg")
    }
    
    func testAge() {
        let person = Person(firstName: "Skyler", lastName: "Robbins", age: 17)
        XCTAssertEqual(person.age, 17)
    }
}


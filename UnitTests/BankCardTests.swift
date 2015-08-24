//
//  UnitTests.swift
//  UnitTests
//
//  Created by Quanlong He on 7/21/15.
//  Copyright (c) 2015 com.cybertk. All rights reserved.
//

import UIKit
import XCTest

@testable import BankLogo

class BankCardTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testParse() {
        var completionExpectation = expectationWithDescription("ready")

        // When parse card with invalid bin
        BankCard.parse(cardNumber: "6222444466668888", completionHandler: { (card, error) in
            XCTAssertTrue(error != nil)
            XCTAssertEqual(error!, ParseError.InvalidCardNumber)
            completionExpectation.fulfill()
        })
        waitForExpectationsWithTimeout(5, handler: { error in
            XCTAssertNil(error)
        })


        // When parse a ICBC credit card
        completionExpectation = expectationWithDescription("ready")
        BankCard.parse(cardNumber: "6222333322223333", completionHandler: { (card, error) in
            XCTAssertTrue(error == nil)
            XCTAssertTrue(card != nil)
            XCTAssertEqual(card!.bank, "ICBC")
            XCTAssertEqual(card!.type, "CC")
            completionExpectation.fulfill()
        })
        waitForExpectationsWithTimeout(5, handler: { error in
            XCTAssertNil(error)
        })


        // When parse a CCB debit card, 6222801370000007798
        completionExpectation = expectationWithDescription("ready")
        BankCard.parse(cardNumber: "6222801370000007798", completionHandler: { (card, error) in
            XCTAssertTrue(error == nil)
            XCTAssertTrue(card != nil)
            XCTAssertEqual(card!.bank, "CCB")
            XCTAssertEqual(card!.type, "DC")

            completionExpectation.fulfill()
        })
        waitForExpectationsWithTimeout(5, handler: { error in
            XCTAssertNil(error)
        })
    }
}

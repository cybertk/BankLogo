//
//  UnitTests.swift
//  UnitTests
//
//  Created by Quanlong He on 7/21/15.
//  Copyright (c) 2015 com.cybertk. All rights reserved.
//

import UIKit
import XCTest

import BankLogo

class UnitTests: XCTestCase {

    var logosBundle: NSBundle {
        let path = NSBundle(forClass: BankLogo.self).pathForResource("Logos", ofType: "bundle")
        return NSBundle(path: path!)!
    }

    var defaultImage: UIImage {
        return UIImage(named: "Default@2x.png", inBundle: logosBundle, compatibleWithTraitCollection: nil)!
    }

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func presentLogoInFixture() -> BankLogo {
        let expectation = self.expectationWithDescription("Fixture presented")
        let controller = UIStoryboard(name: "Fixture", bundle: NSBundle(forClass: self.dynamicType)).instantiateInitialViewController() as! FixtureViewController

        // Present view controller
        UIApplication.sharedApplication().keyWindow!.rootViewController!.presentViewController(controller, animated: false, completion: { () -> Void in

            expectation.fulfill()
        })

        self.waitForExpectationsWithTimeout(5.0, handler: nil)

        return controller.bankLogo!
    }

    // MARK: Test Cases
    
    func testConstructWithCode() {

        // Given a default BankLogo
        let logo = BankLogo(frame: CGRectZero)

        // It should have no bank
        XCTAssertTrue(logo.bank == nil)

        // And it should have default image
        let image = UIImage(named: "Default@2x.png", inBundle: logosBundle, compatibleWithTraitCollection: nil)!
        XCTAssertEqual(logo.image!, image)
    }

    func testConstructWithStoryboard() {

        // Given a default BankLogo in Storyboard
        let logo = presentLogoInFixture()

        // It should have no bank
        XCTAssertTrue(logo.bank == nil)

        // And it should have default image
        let image = UIImage(named: "Default@2x.png", inBundle: logosBundle, compatibleWithTraitCollection: nil)!
        XCTAssertEqual(logo.image!, image)
    }

    func testPropertyOfBank() {
        // Given a default BankLogo
        let logo = BankLogo(frame: CGRectZero)

        // When assign to ABC
        logo.bank = Bank.ABC
        
        // It should have new bank assigned
        XCTAssertEqual(logo.bank!, Bank.ABC)

        // And it should have updated image
        let image = UIImage(named: "ABC@2x.png", inBundle: logosBundle, compatibleWithTraitCollection: nil)!
        XCTAssertEqual(logo.image!, image)


        // When assign nil
        logo.bank = nil

        // It should have nil as bank and defaultImage
        XCTAssertTrue(logo.bank == nil)
        XCTAssertEqual(logo.image!, defaultImage)
    }
}

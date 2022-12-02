//
//  KifExampleUITests.swift
//  KifExampleUITests
//
//  Created by Bliss on 2/12/22.
//

import XCTest

class KifExampleUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        tester().tapView(withAccessibilityLabel: "button")
    }

    func testLegacyExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        app.buttons["button"].firstMatch.tap()
    }

//    func testLaunchPerformance() throws {
//        tester().tapView(withAccessibilityLabel: "button")
//    }
}

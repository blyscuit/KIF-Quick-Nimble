//
//  UISpec.swift
//  KifExampleUITests
//
//  Created by Bliss on 2/12/22.
//

import KIF
import Quick
import Nimble


final class ResetPasswordSpec: QuickSpec {

    override func spec() {

        var app: XCUIApplication!

        describe("a Reset Password screen") {

            describe("its open") {

                beforeEach {
                    app = XCUIApplication()
                    app.launch()
                }

                afterEach {
                    app.terminate()
                }

                it("shows its ui components") {
                    self.tester().waitForView(withAccessibilityLabel: "field")
                    self.tester().enterText("OK", intoViewWithAccessibilityLabel: "field")
                    self.tester().waitForAbsenceOfView(withAccessibilityLabel: "hidden")
                    self.tester().tapView(withAccessibilityLabel: "button")
                    self.tester().waitForView(withAccessibilityLabel: "hidden")
                }
            }
        }
    }
}

//
//  medium_travisci_unit_testing_practiceUITestsLaunchTests.swift
//  medium-travisci-unit-testing-practiceUITests
//
//  Created by danny santoso on 05/05/22.
//

import XCTest

class medium_travisci_unit_testing_practiceUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}

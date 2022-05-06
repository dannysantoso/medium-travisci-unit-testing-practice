//
//  medium_travisci_unit_testing_practiceTests.swift
//  medium-travisci-unit-testing-practiceTests
//
//  Created by danny santoso on 05/05/22.
//

import XCTest
@testable import medium_travisci_unit_testing_practice

class medium_travisci_unit_testing_practiceTests: XCTestCase {
    
    // MARK: Mock Data
    
    private var mockDataAppend =
    [
        Person(
            id: "1",
            name: "person1"
        ),
        Person(
            id: "2",
            name: "person2"
        ),
        Person(
            id: "3",
            name: "person3"
        )
    ]
    
    private var mockDataRemove =
    [
        Person(
            id: "1",
            name: "person1"
        ),
        Person(
            id: "2",
            name: "person2"
        )
    ]
    
    // MARK: Test Case

    func testAppendingData() {
        // create an instance of class that we want to test, usually developer will add a class where the logic of their code reside
        let vc = ViewController()
        vc.addingData()
        
        // get data that we want to test as the result
        let arrData = vc.data
        
        // now assess the result of the function that have been created
        XCTAssertFalse(arrData.isEmpty)
        XCTAssertEqual(mockDataAppend, arrData)
    }
    
    func testRemoveData() {
        // create an instance of class that we want to test, usually developer will add a class where the logic of their code reside
        let vc = ViewController()
        vc.removingData()
        
        // get data that we want to test as the result
        let arrData = vc.data
        
        // now assess the result of the function that have been created
        XCTAssertEqual(mockDataRemove, arrData)
    }
    
    func testRemoveAllData(){
        // create an instance of class that we want to test, usually developer will add a class where the logic of their code reside
        let vc = ViewController()
        vc.removeAllData()
        
        // get data that we want to test as the result
        let arrData = vc.data
        
        // now assess the result of the function that have been created
        XCTAssertTrue(arrData.isEmpty)
        XCTAssertEqual([], arrData)
    }

}

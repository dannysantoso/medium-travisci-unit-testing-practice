//
//  ViewController.swift
//  medium-travisci-unit-testing-practice
//
//  Created by danny santoso on 05/05/22.
//

import UIKit

struct Person: Equatable {
    let id: String
    let name: String
}

class ViewController: UIViewController {
    
    public var data: [Person] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    public func addingData() {
        data.append(Person(id: "1", name: "person1"))
        data.append(Person(id: "2", name: "person2"))
        data.append(Person(id: "3", name: "person3"))
    }
    
    public func removingData() {
        // adding some data because we want to perform delete data in an array
        addingData()
        
        guard let index = data.firstIndex(where: {$0.id == "3"}) else { return }
        data.remove(at: index)
    }
    
    public func removeAllData() {
        // adding some data because we want to perform delete all data in an array
        addingData()
        
        data.removeAll()
    }

}


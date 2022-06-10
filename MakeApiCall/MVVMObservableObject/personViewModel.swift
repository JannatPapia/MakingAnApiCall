//
//  personViewModel.swift
//  MakeApiCall
//
//  Created by Jannatun Nahar Papia on 9/6/22.
//

import SwiftUI

class PersonViewModel: ObservableObject {
    @Published var people: [Person] = []
    
    init() {
        addPeople()
    }
    
    func addPeople() {
        people = peopleData
    }
    
    func shufleOrder() {
        people.shuffle()
    }
    
    func reverseOrder() {
        people.reverse()
    }
    
    func removeLastPerson() {
        people.removeLast()
    }
    
    func removeFirstPerson() {
        people.removeFirst()
    }
}

let peopleData = [
    Person(name: "nazmul", email: "namzul@gmail.com", phoneNumber: "01924262749"),
    Person(name: "nazmul", email: "namzul@gmail.com", phoneNumber: "01924262749"),
    Person(name: "nazmul", email: "namzul@gmail.com", phoneNumber: "01924262749"),
    Person(name: "nazmul", email: "namzul@gmail.com", phoneNumber: "01924262749"),
    Person(name: "nazmul", email: "namzul@gmail.com", phoneNumber: "01924262749"),
    
   // Person[name: "nazmul", email: "namzul@gmail.com", phoneNumber: "01924262749"],
]

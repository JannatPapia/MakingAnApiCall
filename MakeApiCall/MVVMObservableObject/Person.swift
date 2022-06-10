//
//  Person.swift
//  MakeApiCall
//
//  Created by Jannatun Nahar Papia on 9/6/22.
//

//MARK: This is model

import SwiftUI

struct Person: Identifiable {
    var id = UUID()
    var name : String
    var email : String
    var phoneNumber : String
}



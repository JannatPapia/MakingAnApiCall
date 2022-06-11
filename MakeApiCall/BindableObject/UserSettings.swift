//
//  UserSettings.swift
//  MakeApiCall
//
//  Created by Jannatun Nahar Papia on 10/6/22.
//

import Foundation
import SwiftUI
import Combine

class UserSettings : ObservableObject {
    
    let didChange = PassthroughSubject<Void, Never>()
    
    var score: Int = 0 {
        didSet {
            didChange.send()
        }
    }
}

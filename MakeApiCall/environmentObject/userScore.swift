//
//  userScore.swift
//  MakeApiCall
//
//  Created by Jannatun Nahar Papia on 10/6/22.
//

import Foundation
import SwiftUI
import Combine

class userScore : ObservableObject {
    
    let didChange = PassthroughSubject<Void, Never>()
    
    var scor: Int = 0 {
        didSet {
            didChange.send()
        }
    }
}

//
//  UserSettings.swift
//  MakeApiCall
//
//  Created by Jannatun Nahar Papia on 10/6/22.
//

import Foundation
import SwiftUI
import Combine

//When using observed objects there are three key things we need to work with: the ObservableObject protocol is used with some sort of class that can store data, the @ObservedObject property wrapper is used inside a view to store an observable object instance, and the @Published property wrapper is added to any properties inside an observed object that should cause views to update when they change.

//Tip: It is really important that you use @ObservedObject only with views that were passed in from elsewhere. You should not use this property wrapper to create the initial instance of an observable object – that’s what @StateObject is for.

class UserSettings : ObservableObject  {  //When using observed objects there are three key things we need to work with: the ObservableObject protocol is used with some sort of class that can store data, 
    
//    let didChange = PassthroughSubject<Void, Never>()
    
    @Published var score: Int = 0 // @Published property wrapper is added to any properties inside an observed object that should cause views to update when they change.
    

    //{
//        didSet {
//            didChange.send()
//        }
//    }
}

//
//  ContentView.swift
//  MakeApiCall
//
//  Created by Jannatun Nahar Papia on 9/6/22.
//

import SwiftUI

struct ContentView: Codable, Identifiable {
    let id = UUID()
    var title: String
    var body: String
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

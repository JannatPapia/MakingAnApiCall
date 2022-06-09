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
  //stopit
}

class Api {
    func getPosts() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            return
        }
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let posts = try! JSONDecoder().decode([ContentView].self, from: data!)
            print(posts)
        }
        .resume()
    }
}

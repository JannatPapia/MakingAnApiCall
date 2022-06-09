//
//  ContentView.swift
//  MakeApiCall
//
//  Created by Jannatun Nahar Papia on 9/6/22.
//

import SwiftUI


//nice completion handeler or call beck used here
class Api {
    func getPosts(completion: @escaping ([Post]) -> ()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            return
        }
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let posts = try! JSONDecoder().decode([Post].self, from: data!)
            
            DispatchQueue.main.async {
                completion(posts)
            }
            print(posts)
        }
        .resume()
    }
}

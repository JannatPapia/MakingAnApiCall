//
//  Post.swift
//  MakeApiCall
//
//  Created by Jannatun Nahar Papia on 9/6/22.
//

import Foundation

struct Post: Codable, Identifiable {
    let id = UUID()
    var title: String
    var body: String
  //stopit
}

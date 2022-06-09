//
//  PostViewModel.swift
//  MakeApiCall
//
//  Created by Jannatun Nahar Papia on 9/6/22.
//

import SwiftUI

class PostViewModel: ObservableObject{
    @Published var posts : [Post] = []
    
    //
    func getLetestNews(){
        Api().getPosts{ (posts) in
            self.posts = posts
        }
    }
    
}

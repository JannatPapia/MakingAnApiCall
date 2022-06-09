//
//  PostList.swift
//  MakeApiCall
//
//  Created by Jannatun Nahar Papia on 9/6/22.
//

import SwiftUI



struct PostList: View {
   
    @StateObject var viewModel = PostViewModel()
    
    var body: some View {
        List(viewModel.posts) { item in
            Text(item.title)
        }
            .onAppear{
                viewModel.getLetestNews()
            }
    }
}

struct PostList_Previews: PreviewProvider {
    static var previews: some View {
        PostList()
    }
}

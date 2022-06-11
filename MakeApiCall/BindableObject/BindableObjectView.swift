//
//  SwiftUIView.swift
//  MakeApiCall
//
//  Created by Jannatun Nahar Papia on 10/6/22.
//

import SwiftUI
//import Combine



class UserProgress: ObservableObject {
    @Published var score = 0  // @Published property wrapper is added to any properties inside an observed object that should cause views to update when they change.
    

}

struct InnerView: View {
    @ObservedObject var progress: UserProgress  // @ObservedObject property wrapper is used inside a view to store an observable object instance

    var body: some View {
        Button("Increase Score") {
            progress.score += 1
        }
    }
}

struct BindableObjectView: View {
    @StateObject var progress = UserProgress()

    var body: some View {
        VStack {
            Text("Your score is \(progress.score)")
            InnerView(progress: progress)
        }
    }
}

//struct BindableObjectView: View {
//
//    @ObservedObject var set = UserSettings() // @ObservedObject property wrapper is used inside a view to store an observable object instance
//    var body: some View {
//        VStack {
//            Text("\(self.set.score)")
//            Button("Increment Score") {
//                self.set.score += 1
//            }
//
//        }
//    }
//}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        BindableObjectView()
    }
}

//
//  SwiftUIView.swift
//  MakeApiCall
//
//  Created by Jannatun Nahar Papia on 10/6/22.
//

import SwiftUI
import Combine

struct BindableObjectView: View {
    
    @ObservedObject var settings = UserSettings()
    var body: some View {
        VStack {
            Text("\(self.settings.score)")
            Button("Increment Score") {
                self.settings.score += 1
            }
        
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        BindableObjectView()
    }
}

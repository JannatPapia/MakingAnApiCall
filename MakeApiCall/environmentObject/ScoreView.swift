//
//  ScoreView.swift
//  MakeApiCall
//
//  Created by Jannatun Nahar Papia on 10/6/22.
//

import SwiftUI

struct ScoreView: View {
    
    @Binding var scor: Int
    
    var body: some View {
        VStack {
            Text("\(self.scor)")
            Button("Increment Score") {
                self.scor += 1
            }
            .padding()
            .background(Color.yellow)      
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(scor: .constant(0))
    }
}

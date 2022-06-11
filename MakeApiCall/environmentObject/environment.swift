//
//  environment.swift
//  MakeApiCall
//
//  Created by Jannatun Nahar Papia on 10/6/22.
//

import SwiftUI

struct environment: View {
    @EnvironmentObject var setting : userScore

    var body: some View {
        VStack {
            Spacer()
            
            Text("\(setting.scor)")
                .font(.largeTitle)
            
            Button("Increment Score") {
                self.setting.scor += 1
            }
            
            Spacer()
            
            ScoreView(scor: $setting.scor)
                .padding()
        }
    }
}

struct environment_Previews: PreviewProvider {
    static var previews: some View {
        environment()
    }
}

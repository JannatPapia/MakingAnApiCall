//
//  obserbableObject.swift
//  MakeApiCall
//
//  Created by Jannatun Nahar Papia on 9/6/22.
//

import SwiftUI

struct obserbableObject: View {
    //Create a instance for FancyTimer
    @ObservedObject var fancyTimer = FancyTimer()
    var body: some View {
        Text("\(self.fancyTimer.value)")
            .font(.largeTitle)
    }
}

struct obserbableObject_Previews: PreviewProvider {
    static var previews: some View {
        obserbableObject()
    }
}

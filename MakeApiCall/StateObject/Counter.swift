//
//  Counter.swift
//  MakeApiCall
//
//  Created by Jannatun Nahar Papia on 9/6/22.
//

import SwiftUI

class Count: ObservableObject {
    @Published var value : Int = 0
}

struct CounterView : View {
    
    //   @ObservedObject var counter = Count()
    @StateObject var counter = Count()
    
    var body: some View {
        VStack{
            Text("\(counter.value)")
            Button("CountentView Value Increment") {
                counter.value += 1
                
            }
        }.padding()
            .background(Color.green)
  //      Text("Counter View")
    }
}

struct Counter : View {
    
    @State private var count : Int = 0
    var body: some View {
        VStack {
        Text("COUNTER VIEW")
            Text("\(count)")
            Button("Increment Counter") {
                count += 1
            }
            CounterView()
        }
        .padding()
                .background(Color.yellow)
        
    }
}

struct Counter_Previews: PreviewProvider {
    static var previews: some View {
        Counter()
    }
}

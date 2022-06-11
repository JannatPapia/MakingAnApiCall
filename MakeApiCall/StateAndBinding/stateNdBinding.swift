//
//  stateNdBinding.swift
//  MakeApiCall
//
//  Created by Jannatun Nahar Papia on 10/6/22.
//

import SwiftUI

struct stateNdBinding: View {
    
    @State var placeholderText = "life is hard"
    
    var body: some View {
        VStack{
            Text("\(self.placeholderText)")
            
            CustomButton1(placeHolderText: self.$placeholderText)
            CustomButton2(placeHolderText: self.$placeholderText)
            
        }
        
    }
}


struct CustomButton1 : View {
    
@Binding var placeHolderText : String

var body: some View {
    Button("Cat says") { self.placeHolderText = "Meow"}
}
}

struct CustomButton2 : View {
    @Binding var placeHolderText : String
    
    var body: some View {
        Button("Dog says") { self.placeHolderText = "Woof"}
    }
}
struct stateNdBinding_Previews: PreviewProvider {
    static var previews: some View {
        stateNdBinding()
    }
}

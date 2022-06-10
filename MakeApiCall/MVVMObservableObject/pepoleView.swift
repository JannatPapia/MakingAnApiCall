//
//  pepoleView.swift
//  MakeApiCall
//
//  Created by Jannatun Nahar Papia on 9/6/22.
//

//MARK: this the view

import SwiftUI

struct pepoleView: View {
    @ObservedObject var viewModel = PersonViewModel()
    
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            ScrollView {
                ForEach(viewModel.people) { person in
            HStack {
                
                Text(person.name)
                    .font(.title)
                    .fontWeight(.bold)
                
                Spacer()
                
                VStack(alignment: .trailing) {
                    Text(person.phoneNumber)
                    Text(person.email)
                }
            }
            .frame(height: 80)
            .padding()
        }
            }
            Menu("Menu".uppercased()) {
                Button("Reverse", action: {viewModel.reverseOrder() })
                Button("Shuffle", action: {viewModel.shufleOrder() })
                Button("Remove last", action: {viewModel.removeLastPerson() })
                Button("Remove first", action: {viewModel.removeFirstPerson() })
            }
            .padding()
        }
    }
    }


struct pepoleView_Previews: PreviewProvider {
    static var previews: some View {
        pepoleView()
    }
}

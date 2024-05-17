//
//  AddView.swift
//  SwiftUIToDoList
//
//  Created by Mohammad Blur on 5/17/24.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText: String = ""
    
    var body: some View {
        ScrollView {
            TextField("Type something here...", text: $textFieldText)
                .padding(.horizontal)
                .frame(height: 55)
                .background(Color.gray.opacity(0.4))
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.horizontal)
            
            Button {
              
            } label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .frame(height: 40)
            }
            .buttonStyle(BorderedProminentButtonStyle())
            .padding(.horizontal)
        }
        .navigationTitle("Add an item 🖊️")
    }
}

#Preview {
    NavigationView {
        AddView()
    }

}

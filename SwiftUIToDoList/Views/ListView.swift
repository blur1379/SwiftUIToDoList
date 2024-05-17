//
//  ListView.swift
//  SwiftUIToDoList
//
//  Created by Mohammad Blur on 5/16/24.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
    "This is the first title!",
    "This is the second!",
    "Third!"
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
        }
//        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink(
                "add",
                destination: AddView()
            )
        )
    }
}

#Preview {
    NavigationView(content: {
        ListView()
    })
   
}



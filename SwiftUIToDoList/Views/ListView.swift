//
//  ListView.swift
//  SwiftUIToDoList
//
//  Created by Mohammad Blur on 5/16/24.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        List {
            ForEach(listViewModel.items) { item in
                ListRowView(item: item)
                    .onTapGesture {
                        withAnimation(.linear) {
                            listViewModel.updateItem(item: item)
                        }
                    }
            }
            .onDelete(perform: listViewModel.deleteItem)
            .onMove(perform: listViewModel.moveItem)
        }
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
    @StateObject var listViewModel = ListViewModel()
    return NavigationView(content: {
        ListView()
            .environmentObject(listViewModel)
    })
   
}

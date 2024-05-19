//
//  ListRowView.swift
//  SwiftUIToDoList
//
//  Created by Mohammad Blur on 5/16/24.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title3)
        .padding(.vertical, 8)
    }
}

#Preview {
    var item1 = ItemModel(title: "first Item", isCompleted: false)
    var item2 = ItemModel(title: "second Item", isCompleted: true)
    return Group {
        ListRowView(item: item1)
        ListRowView(item: item2)
    }.previewLayout(.sizeThatFits)
}

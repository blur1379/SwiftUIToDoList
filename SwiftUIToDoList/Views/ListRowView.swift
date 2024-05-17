//
//  ListRowView.swift
//  SwiftUIToDoList
//
//  Created by Mohammad Blur on 5/16/24.
//

import SwiftUI

struct ListRowView: View {
    
    let title: String
    
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
        }
    }
}

#Preview {
    ListRowView(title: "this is the first item")
}

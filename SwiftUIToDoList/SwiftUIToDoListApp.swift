//
//  SwiftUIToDoListApp.swift
//  SwiftUIToDoList
//
//  Created by Mohammad Blur on 5/16/24.
//

import SwiftUI

@main
struct SwiftUIToDoListApp: App {
    @StateObject var listViewModel = ListViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}

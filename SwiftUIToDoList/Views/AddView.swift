//
//  AddView.swift
//  SwiftUIToDoList
//
//  Created by Mohammad Blur on 5/17/24.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    
    @State var textFieldText: String = ""
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    
    var body: some View {
        ScrollView {
            TextField("Type something here...", text: $textFieldText)
                .padding(.horizontal)
                .frame(height: 55)
                .background(Color.gray.opacity(0.4))
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.horizontal)
            
            Button {
              saveButtonPressed()
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
        .alert(isPresented: $showAlert, content: getAlert)
    }
    
    func saveButtonPressed() {
        if textIsAppropriate() {
            listViewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
        }
    }
    
    func textIsAppropriate() -> Bool {
        if textFieldText.count < 3 {
            alertTitle = "Your new todo item must be at least 3 characters long!!! 😫"
            showAlert.toggle()
            return false
        }
        return true
    }
    
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
    
}

#Preview {
    @StateObject var listViewModel = ListViewModel()
    
   return NavigationView {
        AddView()
    }
    .environmentObject(listViewModel)
}

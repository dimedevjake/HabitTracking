//
//  AddView.swift
//  HabitTracking
//
//  Created by Jacob and Shalise on 3/15/22.
//

import SwiftUI

struct AddView: View {
    
 
    
    @ObservedObject var habits: Habits
    @Environment(\.dismiss) var dismiss
    
    @State private var name = ""
    @State private var description = ""
    
    var body: some View {
        NavigationView {
            
            
                
                Form {
                    
                    TextField("Name", text: $name)
                        .listRowBackground(Color(red: 120/255, green: 11/255, blue: 150/255))
                        .foregroundColor(.white)
                    TextField("Description", text: $description)
                        .listRowBackground(Color(red: 100/255, green: 13/255, blue: 130/255))
                        .foregroundColor(.white)
                }
                .background(Color(red: 156/255, green: 16/255, blue: 179/255))
                .onAppear {
                  UITableView.appearance().backgroundColor = .clear
                }
                .onDisappear {
                  UITableView.appearance().backgroundColor = .systemGroupedBackground
                }
                .navigationTitle("Add new habit")
                .toolbar {
                    Button("Save") {
                        let trimmedName = name.trimmingCharacters(in: .whitespaces)
                        guard trimmedName.isEmpty == false else { return }
                        
                        let item = HabitItem(name: name, description: description)
                        habits.items.append(item)
                        dismiss()
                    }
                    .foregroundColor(Color(.white))
   
            }
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView(habits: Habits()) 
    }
}

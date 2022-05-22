//
//  ContentView.swift
//  HabitTracking
//
//  Created by Jacob and Shalise on 3/14/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showNavView = false
    @State private var showModalView = false
    init() {
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.systemBackground]
        UINavigationBar.appearance().standardAppearance = navBarAppearance
        UINavigationBar.appearance().compactAppearance = navBarAppearance
        UINavigationBar.appearance().tintColor = UIColor.systemBackground
    }
    
    @StateObject var habits = Habits()
   
    @State private var showingAddedHabit = false
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                BackgroundColor()
                
                VStack{
                    
                    ScrollView {
                        HabitSection(habits: habits)
                    }
                    .navigationTitle("Habits")
                        .toolbar {

                            Button {
                                showingAddedHabit.toggle()
                            } label: {
                                Label("Add new Habit", systemImage: "plus")
                                    .foregroundColor(.primary)
                            }
                        }
                        .sheet(isPresented: $showingAddedHabit) {
                            AddView(habits: habits)
                    }
                }
            }
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

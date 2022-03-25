//
//  HabitDetail.swift
//  HabitTracking
//
//  Created by Jacob and Shalise on 3/17/22.
//

import SwiftUI

struct HabitDetail: View {
    
    @ObservedObject var data: Habits
    
    var habit: HabitItem
    
    var body: some View {
        
        ZStack{
            
            BackgroundColor()
            
            ScrollView {
                
                VStack {
                    ZStack {
                        
                        ItemCell()
                            .frame(height: 50)
                        
                        HStack(alignment: .center) {
                        Spacer(minLength: 30)
                        
                            if habit.description.isEmpty == false {
                                Text(habit.description)
                                    .foregroundColor(Color(.white))
                            }
                            
                            Spacer(minLength: 30)
                     }
                    }
                    
                    ZStack {
                        
                        ItemCell()
                            .frame(height: 50)
                        
                        HStack(alignment: .center) {
                        Spacer(minLength: 30)
                        
                            Text("Completion count: \(habit.completionCount)")
                                .foregroundColor(Color(.white))
                            
                            Spacer(minLength: 30)
                     }
                    }
                    
                   
                    
                    Button(action: { var newHabit = habit
                        newHabit.completionCount += 1
                        
                        if let index = data.items.firstIndex(of: habit) {
                            data.items[index] = newHabit
                        }
                    }
                    
                    ) {
                        
                        ZStack {
                            
                            Circle()
                                .fill(
                                        RadialGradient(gradient: Gradient(colors: [Color(red: 120/255, green: 11/255, blue: 150/255), .purple]), center: .center, startRadius: 0, endRadius: 200)
                                    )
                                .frame(width: 150, height: 150)
                                

                            Image(systemName: "plus")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                            
                            ProgressRing(progress: Double(habit.completionCount))
                            
                        }
                    }
                    .padding()
                    
                }
            }
        }
        .navigationTitle(habit.name)
    }
}

struct HabitDetail_Previews: PreviewProvider {
    static var previews: some View {
        HabitDetail(data: Habits(), habit: HabitItem.example)
    }
}

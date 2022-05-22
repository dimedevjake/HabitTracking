//
//  HabitSection.swift
//  HabitTracking
//
//  Created by Jacob and Shalise on 3/16/22.
//

import SwiftUI

struct HabitSection: View {
    
    @StateObject var habits = Habits()


    var body: some View {
        Section () {
            ForEach(habits.items) { item in
                
                NavigationLink {
                    HabitDetail(data: habits, habit: item)
                                } label: {
                                    ZStack {
                                        
                                        ItemCell()
                                            .frame(height: 50)
                                        
                                        HStack(alignment: .center) {
                                        Spacer(minLength: 30)
                                        Text(item.name)
                                                .foregroundColor(.white)
                                        Spacer(minLength: 30)
                                        
                                            VStack {
                                               
                                                ProgressView("", value: CGFloat(item.completionCount), total: 60)
                                                        .accentColor(color(for: item))
                                                        .frame(minHeight: 35)
                                                        .shadow(color: Color.white, radius: 3, x: 0, y: 0)
                                                Spacer()
                                            }
                                           
                                        Spacer(minLength: 30)
                                        
                                        Text(String(item.completionCount))
                                            .font(.caption.weight(.black))
                                            .foregroundColor(.white)
                                            .padding(5)
                                            .frame(minWidth: 50)
                                            .background(color(for: item))
                                            .clipShape(Capsule())
                                            .shadow(color: Color.white, radius: 3, x: 0, y: 0)
                                            
                                            Spacer(minLength: 30)
                        }
                    }
                }
            }
        }
    }
    
    func color(for item: HabitItem) -> Color {
        if item.completionCount < 3 {
            return .red
        } else if item.completionCount < 10 {
            return .orange
        } else if item.completionCount < 20 {
            return .green
        } else if item.completionCount < 50 {
            return .blue
        } else {
            return .indigo
        }
    }
}

struct HabitSection_Previews: PreviewProvider {
    static var previews: some View {
        HabitSection()
    }
}

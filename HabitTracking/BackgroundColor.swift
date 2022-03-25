//
//  BackgroundColor.swift
//  HabitTracking
//
//  Created by Jacob and Shalise on 3/18/22.
//

import SwiftUI

struct BackgroundColor: View {
    var body: some View {
        ZStack {
           
            AngularGradient(gradient: Gradient(colors: [.pink, .purple, .blue, .indigo, .purple, .pink]), center: .center)
            .ignoresSafeArea()
            
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(.purple)
                .shadow(color: Color.indigo, radius: 100, x: 0, y: 0)

        RoundedRectangle(cornerRadius: 0)
            .ignoresSafeArea()
            .foregroundStyle(.ultraThinMaterial)
        }
    }
}

struct BackgroundColor_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundColor()
    }
}

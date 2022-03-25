//
//  ProgressRing.swift
//  HabitTracking
//
//  Created by Jacob and Shalise on 3/19/22.
//

import SwiftUI

struct ProgressRing: View {
    
    var progress: Double
    
    
    var body: some View {
        
        ZStack {
            
            Circle()
                .stroke(Color.black.opacity(0.1), style:
            StrokeStyle(lineWidth: 20))
                .frame(width: 170, height: 170)
            
            Circle()
                .trim(from: 0, to: CGFloat(self.progress) * 0.016667)
                .stroke(
                    LinearGradient(gradient: Gradient(colors: [Color(.purple), Color(.red)]), startPoint: .topTrailing, endPoint: .bottomLeading),
        style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round, miterLimit: .infinity, dash: [20, 0], dashPhase: 0)
                )
       
        }
        
        .rotationEffect(Angle(degrees: -90))
        .frame(width: 170, height: 170)
        .padding()
    }
}

struct ProgressRing_Previews: PreviewProvider {
    static var previews: some View {
        ProgressRing(progress: 0.0)
    }
}

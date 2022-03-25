//
//  ItemCell.swift
//  HabitTracking
//
//  Created by Jacob and Shalise on 3/18/22.
//

import SwiftUI

struct ItemCell: View {

    
    var body: some View {

        ZStack {

            Capsule()
                .fill(.ultraThinMaterial)
                .clipShape(Capsule())
                .overlay(Capsule()
                    .strokeBorder(.white, lineWidth: 2)
                )
                .padding(.horizontal, 8)
                .shadow(color: Color.white, radius: 3, x: 0, y: 0)
                

        }
    }
}

struct ItemCell_Previews: PreviewProvider {
    static var previews: some View {
        ItemCell()
    }
}

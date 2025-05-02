//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by RE on 03/05/25.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        
        ZStack {
            //3-Depth
            Color.CustomGreenDark
                .cornerRadius(40)
                .offset(y: 12)
            //2-Light
            Color.CustomGreenLight
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(0.85)
            
            //1-Surface
            LinearGradient(
                colors: [Color.CustomGreenLight, Color.CustomGreenMedium],
                startPoint: .top ,
                endPoint: .bottom
            )
            .cornerRadius(40)
        }
        
    }
}

struct CustomBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        CustomBackgroundView()
            .padding()
    }
}

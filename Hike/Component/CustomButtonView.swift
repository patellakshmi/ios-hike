//
//  CustomButtonView.swift
//  Hike
//
//  Created by RE on 03/05/25.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack{
            Circle()
               
                .fill(LinearGradient(colors: [.white, .CustomGreenLight, .CustomGreenMedium], startPoint: .top, endPoint: .bottom))
            
            Circle()
                .stroke(LinearGradient(colors: [.CustomGrayLight, .CustomGrayMedium], startPoint: .top, endPoint: .bottom), style: StrokeStyle(lineWidth: 4))
                
          Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size:30))
                .foregroundStyle(LinearGradient(colors: [.CustomGrayLight, .CustomGrayMedium], startPoint: .top, endPoint: .bottom))
            
        }
        .frame(width: 58, height: 58)
    }
}

struct CustomButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

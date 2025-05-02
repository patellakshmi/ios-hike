//
//  CardView.swift
//  Hike
//
//  Created by RE on 03/05/25.
//

import SwiftUI

struct CardView: View {
    
    @State private var imageNumber:Int = 1
    @State private var raandomNumber:Int = 1
    
    func randomImage(){
        raandomNumber = Int.random(in: 1...5)
        imageNumber = raandomNumber
    }
    
    var body: some View {
        ZStack {
            CustomBackgroundView()

            
            VStack {
                //Header
                VStack(alignment: .leading){
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(colors: [.CustomGrayLight, .CustomGrayMedium], startPoint: .topLeading, endPoint: .bottomTrailing
                                            )
                        )
                        
                       
                        
                        Button{
                            //Action : show a sheet
                            print("The button pressed")
                        } label: {
                            CustomButtonView()
                        }
                    }
                    
                    Text("Fun and enjoyable outdoor activity for friends and families")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.CustomGrayMedium)
              
                
                
                //Main-Content
                ZStack {
                    CustomCircleView()
                    
                    Image("image-\(imageNumber)")
                        .resizable()
                    .scaledToFit()
                }
                }.padding(20)
            
            //Footer
            Button{
                //Action : show a sheet
                print("The button pressed")
                randomImage()
            } label: {
                Text("Explore")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundStyle(LinearGradient(colors: [.white, .yellow], startPoint: .top, endPoint: .bottom))
                   
            }
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(LinearGradient(colors: [.CustomGrayLight, .CustomGrayMedium], startPoint: .top, endPoint: .bottom))
            .cornerRadius(40)
            }
            
        } // Card
        .frame(width: 320, height: 557)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}

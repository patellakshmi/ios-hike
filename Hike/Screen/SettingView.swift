//
//  SettingView.swift
//  Hike
//
//  Created by RE on 03/05/25.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        List{
            Section{
                //Header
                HStack{
                    Spacer()
                    Image(systemName:"laurel.leading")
                        .font(.system(size: 88, weight: .black))
                    VStack(spacing:-10) {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        Text("Editor's choice")
                            .fontWeight(.medium)
                    }
                    Image(systemName:"laurel.trailing")
                        .font(.system(size: 88, weight: .black))
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(colors: [.CustomGreenLight, .CustomGreenDark], startPoint:.topLeading , endPoint: .bottomTrailing)
                )
                .padding(.top, 8)
                VStack(spacing: 8){
                    Text("Where can you find \n perfact track")
                        .font(.title2)
                        .fontWeight(.heavy)
                    Text("The Hike which looks gorgeous in photo but is even better once you are actually here. The Hike that you hope to do again someday. \n Find the best day hikes in the app")
                        .font(.footnote)
                        .italic()
                    
                    Text("Dust of the boost! It's time for walk")
                        .fontWeight(.heavy)
                        .foregroundColor(.CustomGreenMedium)
                }.multilineTextAlignment(.center)
                    .padding(.bottom, 16)
                    .frame(maxWidth: .infinity)
            } //End of header
            .listRowSeparator(.hidden)
            
            //Section ICON
            
            //Section Desc
            Section(
                header: Text("ABOUT THE APP"),
                footer: HStack{
                    Spacer()
                    Text("Copyright © all right reserved.")
                    Spacer()
                }.padding(.vertical, 8)
            ){
                //basic LabelContent
               //LabeledContent("Application Content", value: "Hike")
                //Advanced LabelContent
                CustomListRowView(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "HIKE", rowTintColor: .blue)
                
                CustomListRowView(rowLabel: "Compatibility", rowIcon: "info.circle", rowContent: "iOS/iPad", rowTintColor: .red)
                
                CustomListRowView(rowLabel: "Technology", rowIcon: "swift", rowContent: "Swift", rowTintColor: .orange)
                
                CustomListRowView(rowLabel: "Developer", rowIcon: "ellipsis.curlybraces", rowContent: "Lakshmi", rowTintColor: .green)
            }
            
            
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}

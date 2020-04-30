//
//  JournalView.swift
//  DreamJournalProject.iOS
//
//  Created by Dmitriy Dmitriy on 28.04.2020.
//  Copyright © 2020 Dmitrii Zverev. All rights reserved.
//

import SwiftUI


struct JournalView: View {
    
    init() {
        UITabBar.appearance().backgroundColor = .clear
        UITableView.appearance().separatorStyle = .none
        UITableView.appearance().backgroundColor = .clear
        UITableViewCell.appearance().backgroundColor = .clear
    }
    
    var body: some View {
       VStack {
            List {
                Spacer()
                    
                
                Text("Dream journal")
                    .font(.system(size: 34, weight: .bold, design: .default))
                    .listRowInsets(EdgeInsets(top: 0, leading: 24, bottom: 12, trailing: 24))
                    .foregroundColor(Color.white)
                    
                FaqBannerView()
                    .listRowInsets(EdgeInsets(top: 0, leading: 24, bottom: 12, trailing: 24))
                
                Text("Collection")
                    .font(.system(size: 18, weight: .bold, design: .default))
                    .listRowInsets(EdgeInsets(top: 0, leading: 24, bottom: 12, trailing: 24))
                    .padding(.top, 48)
                    .foregroundColor(Color.white)
                
                ListDatePickerView()
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 24, trailing: 0))
                
                ForEach(1...20, id: \.self) { _ in
                    PostView()
                        .listRowInsets(EdgeInsets(top: 0, leading: 24, bottom: 12, trailing: 24))
                }
            }
        }
       .edgesIgnoringSafeArea([.top, .bottom])
    }
}

struct JournalView_Previews: PreviewProvider {
    static var previews: some View {
        JournalView()
        /*
         Image("background_image")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .background(Color("dj.background"))
            .edgesIgnoringSafeArea([.top, .bottom])
         */
    }
}

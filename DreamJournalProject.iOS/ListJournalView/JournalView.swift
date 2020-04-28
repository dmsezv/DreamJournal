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
        UINavigationBar.appearance().backgroundColor = .clear
        UINavigationBar.appearance().barTintColor = .clear
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
        
    }
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Image("background_image")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .background(Color("dj.background"))
                    
                
                VStack {
                    
                    Spacer()
                    
                    ListDatePickerView()
                    
                    VStack {
                        PostView()
                        PostView()
                        PostView()
                        PostView()
                        PostView()
                        PostView()
                        PostView()
                    }
                    .padding([.trailing, .leading], 24)
                    .navigationBarTitle("test")
                    
                }
                .frame(width: geometry.size.width)
                
            }
        }
        .edgesIgnoringSafeArea([.top, .bottom])
    }
}

struct JournalView_Previews: PreviewProvider {
    static var previews: some View {
        JournalView()
    }
}

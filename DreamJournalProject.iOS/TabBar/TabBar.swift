//
//  TabBar.swift
//  DreamJournalProject.iOS
//
//  Created by Dmitriy Dmitriy on 27.04.2020.
//  Copyright © 2020 Dmitrii Zverev. All rights reserved.
//

import SwiftUI

enum Tab {
    case tabJournal, tabProfile, tabAddNew
}

struct TabBar: View {
    
    @State private var currentView: Tab = .tabJournal
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                Text("home")
                Spacer()
                HStack {
                    VStack {
                        Image("tabJournal")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            //.padding(.top, 3)
                            .frame(width: 44, height: 44)
                            .background(Color.green)
                        Spacer()
                    }
                    .padding(.top, 3)
                    
                    ZStack {
                        Circle()
                            .frame(width: 62, height: 62)
                        .padding()
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 75, height: 75)
                            .foregroundColor(.blue)
                    }
                    
                    VStack {
                        Image("tabProfile")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            //.padding(.top, 3)
                            .frame(width: 44, height: 44)
                            .background(Color.green)
                        Spacer()
                    }
                    .padding(.top, 3)
                }
                .frame(width: geometry.size.width, height: geometry.size.height/10)
                .background(Color.red)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}

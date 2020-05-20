//
//  TabBar.swift
//  DreamJournalProject.iOS
//
//  Created by Dmitriy Dmitriy on 27.04.2020.
//  Copyright © 2020 Dmitrii Zverev. All rights reserved.
//

import SwiftUI

struct TabBarView: View {
    
    @ObservedObject var viewRouter = ViewRouter()
    @State var isPresentedAddnewNote = false
    
    var body: some View {
        GeometryReader { geometry in
            
            Image("background_image")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .background(Color("dj.background"))
            .edgesIgnoringSafeArea([.top, .bottom])
            
            VStack {
                Spacer()
                
                if self.viewRouter.currentView == "journal" {
                    JournalView()
                } else {
                    ProfileView()
                }
                
                Spacer()
                HStack {
                    VStack {
                        Image("tab.journal")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 44, height: 44)
                            .foregroundColor(self.viewRouter.currentView == "journal" ? Color("tab.active") : Color("tab.inactive"))
                        Spacer()
                    }
                    .padding(.top, 3)
                    .padding(.trailing, 34)
                    .onTapGesture {
                        self.viewRouter.currentView = "journal"
                    }
                    
                    ZStack {
                        Circle()
                            .frame(width: 62, height: 62)
                            .foregroundColor(Color("dj.purpule"))
                            .shadow(color: Color("dj.purpule.shadow"), radius: 5, x: 0, y: 10)
                            .onTapGesture {
                                self.isPresentedAddnewNote.toggle()
                            }
                            .sheet(isPresented: self.$isPresentedAddnewNote) {
                                DreamNoteView()
                            }
                        
                        Image("tab.plus")
                            .resizable()
                            .frame(width: 18, height: 18)
                            .foregroundColor(.white)
                    }
                    .offset(y: -geometry.size.height/10/2 + 10)
                    
                    
                    VStack {
                        Image("tab.profile")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 44, height: 44)
                            .foregroundColor(self.viewRouter.currentView == "profile" ? Color("tab.active") : Color("tab.inactive"))
                        Spacer()
                    }
                    .padding(.top, 3)
                    .padding(.leading, 34)
                    .onTapGesture {
                        self.viewRouter.currentView = "profile"
                    }
                }
                .frame(width: geometry.size.width, height: geometry.size.height/10)
                .background(Color("tabbar.background"))
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}

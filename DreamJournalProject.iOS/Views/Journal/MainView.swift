//
//  MainView.swift
//  DreamJournalProject.iOS
//
//  Created by Dmitriy Dmitriy on 24.04.2020.
//  Copyright © 2020 Dmitrii Zverev. All rights reserved.
//

import SwiftUI

struct MainView: View {
    
    @ObservedObject var viewRouter = ViewRouter()
    
    var body: some View {
        /*
        if self.viewRouter.currentView == "journal" {
            ContentView()
        } else if self.viewRouter.currentView == "profile" {
            ProfileView()
        } else {
            AddNoteView()
        }
         */
        Text("")
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

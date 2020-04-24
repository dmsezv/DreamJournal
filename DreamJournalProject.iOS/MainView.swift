//
//  MainView.swift
//  DreamJournalProject.iOS
//
//  Created by Dmitriy Dmitriy on 24.04.2020.
//  Copyright © 2020 Dmitrii Zverev. All rights reserved.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack {
            //ContentView()
            Text("test")
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        //.edgesIgnoringSafeArea(.all)
        .background(Color.red)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

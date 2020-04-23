//
//  ContentView.swift
//  DreamJournalProject.iOS
//
//  Created by Dmitriy Dmitriy on 22.04.2020.
//  Copyright © 2020 Dmitrii Zverev. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    
    @State private var searchQuery: String = ""
    
    init() {
        UITableView.appearance().separatorStyle = .none
    }
    
    var body: some View {
        VStack {
            List {
                 ForEach(1...10, id: \.self) {_ in
                    PostView()
                    .listRowInsets(EdgeInsets(top: 0, leading: 24, bottom: 12, trailing: 24))
                        .background(Color.clear)
                 }
                //.listRowBackground(Color.clear)
            }
        
            //.colorScheme(/*@START_MENU_TOKEN@*/.light/*@END_MENU_TOKEN@*/)
        }
        //.edgesIgnoringSafeArea(.all)
        .background(Color.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

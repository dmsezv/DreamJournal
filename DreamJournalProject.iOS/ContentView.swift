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
        UITableView.appearance().backgroundColor = .clear
        //UITableView.appearance().backgroundColor = UIColor.clear
        UITableViewCell.appearance().backgroundColor = .clear
        UINavigationBar.appearance().backgroundColor = .clear
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.black]
    }
    
    var body: some View {
        NavigationView {
            List {
                

                Spacer()
                Text("Collection")
                    .font(.system(size: 18, weight: .bold, design: .default))
                    .listRowInsets(EdgeInsets(top: 0, leading: 24, bottom: 12, trailing: 24))
                    
                
                ListDatePickerView()
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 24, trailing: 0))
                
                ForEach(1...20, id: \.self) { _ in
                    PostView()
                        .listRowInsets(EdgeInsets(top: 0, leading: 24, bottom: 12, trailing: 24))
                }
                
            }
            .navigationBarTitle("Dream journal")
            
            //.navigationBarHidden(true)
            
        }
        //.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

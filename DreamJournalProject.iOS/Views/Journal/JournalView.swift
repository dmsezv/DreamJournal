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
        UITabBar.appearance().backgroundColor = .clear
        UITableView.appearance().separatorStyle = .none
        UITableView.appearance().backgroundColor = .clear
        UITableViewCell.appearance().backgroundColor = .clear
    }
    
    var listNotes = DreamNote.mockedData
    
    @State var isNoteOpen = false
    @State var selectedNoteIndex: Int = 0
    
    var body: some View {
       VStack {
            List {
                Spacer()
                    
                
                Text("Dream journal")
                    .font(.system(size: 34, weight: .bold, design: .default))
                    .listRowInsets(EdgeInsets(top: 0, leading: 24, bottom: 12, trailing: 24))
                    .foregroundColor(Color.white)
                    
                FaqBanner()
                    .listRowInsets(EdgeInsets(top: 0, leading: 24, bottom: 12, trailing: 24))
                
                Text("Collection")
                    .font(.system(size: 18, weight: .bold, design: .default))
                    .listRowInsets(EdgeInsets(top: 0, leading: 24, bottom: 12, trailing: 24))
                    .padding(.top, 48)
                    .foregroundColor(Color.white)
                
                ListDatePickerView()
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 24, trailing: 0))
                
                
                ForEach(0..<listNotes.count, id: \.self) { index in
                    NotesRow(dreamNote: self.listNotes[index])
                        .listRowInsets(EdgeInsets(top: 0, leading: 24, bottom: 12, trailing: 24))
                        .onTapGesture {
                            self.selectedNoteIndex = index
                            self.isNoteOpen.toggle()
                    }
                }
            }
            .sheet(isPresented: $isNoteOpen) {
                DreamNoteView(index: self.selectedNoteIndex)
            }
        }
       .edgesIgnoringSafeArea([.top, .bottom])
    }
}

#if DEBUG

struct JournalView_Previews: PreviewProvider {
    static var previews: some View {
        JournalView()
            .background(Color.blue)
    }
}

#endif

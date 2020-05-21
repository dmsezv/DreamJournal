//
//  PostView.swift
//  DreamJournalProject.iOS
//
//  Created by Dmitriy Dmitriy on 22.04.2020.
//  Copyright © 2020 Dmitrii Zverev. All rights reserved.
//

import SwiftUI

struct NotesRow: View {
    
    var dreamNote: DreamNote
    
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            VStack(alignment: .trailing, spacing: 0) {
                VStack(alignment: .center, spacing: 8) {
                    VStack(alignment: .center, spacing: 0) {
                        Text("24")
                            .foregroundColor(Color("notesrow.date"))
                            .font(.system(size: 24))
                            
                        Text("dec")
                            .foregroundColor(Color("notesrow.date"))
                            .font(.system(size: 11))
                    }
                    
                    if dreamNote.isLucidDream {
                        Circle()
                            .fill(Color("notesrow.lucid"))
                            .frame(width: 4, height: 4)
                        }
                    }
            }
            .padding(.leading, 15)
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum")
            .foregroundColor(Color("notesrow.text"))
            .lineLimit(3)
            .font(.system(size: 15))
                .padding(.trailing, 16)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 88, maxHeight: 88)
        .background(Color("dj.purpule.row"))
        .cornerRadius(16)
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        NotesRow(dreamNote: DreamNote.mockedData[0])
            .previewLayout(.fixed(width: 300, height: 88))
    }
}
